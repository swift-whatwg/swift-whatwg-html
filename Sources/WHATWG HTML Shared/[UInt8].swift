// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//
//
// Byte transformations for WHATWG HTML Global Attributes
//
// This file contains the canonical byte serialization for HTML attributes.
// All serialization logic lives here - String.init and .description defer
// to these transformations per the RFC pattern.
//
// ===----------------------------------------------------------------------===//

import ASCII_Primitives

// MARK: - Boolean Attributes

extension [UInt8] {
    /// Creates HTML attribute bytes for any boolean attribute
    ///
    /// Boolean attributes render as just the attribute name when true.
    /// When false, the attribute is omitted from HTML entirely.
    ///
    /// ## HTML Spec
    ///
    /// Per the WHATWG HTML Living Standard, boolean attributes represent
    /// true/false values. The presence of the attribute represents true,
    /// absence represents false.
    ///
    /// ## Examples
    ///
    /// ```swift
    /// [UInt8](Autofocus(value: true))   // b"autofocus"
    /// [UInt8](Autofocus(value: false))  // b"" (empty - omit attribute)
    /// [UInt8](Hidden(value: true))      // b"hidden"
    /// ```
    ///
    /// ## Performance
    ///
    /// When true: Returns the attribute name as bytes
    /// When false: Returns empty array (zero allocation)
    ///
    /// - Parameter attribute: Any boolean attribute conforming to BooleanAttribute
    /// - Returns: Byte array containing the attribute name or empty
    ///
    /// ## See Also
    ///
    /// - ``WHATWG_HTML/BooleanAttribute``
    public init<T: WHATWG_HTML.BooleanAttribute>(_ attribute: T) {
        if attribute.rawValue {
            // Attribute name is ASCII-only, use unchecked for performance
            self = Array(T.attribute.utf8)
        } else {
            // False = omit attribute entirely
            self = []
        }
    }
}

// MARK: - String Attributes

extension [UInt8] {
    /// Creates HTML attribute bytes for any string attribute
    ///
    /// String attributes render as `attribute="value"` in HTML.
    /// This transformation handles the canonical byte serialization.
    ///
    /// ## HTML Spec
    ///
    /// Per the WHATWG HTML Living Standard, string attributes are serialized as:
    /// ```
    /// attribute="value"
    /// ```
    ///
    /// ## UTF-8 Support
    ///
    /// Unlike RFC protocols, HTML supports full UTF-8. The value can contain
    /// any valid Unicode characters, not just ASCII.
    ///
    /// ## Examples
    ///
    /// ```swift
    /// [UInt8](Id(value: "main"))        // b"id=\"main\""
    /// [UInt8](Id(value: "my-div"))      // b"id=\"my-div\""
    /// [UInt8](Id(value: "日本"))        // b"id=\"\xe6\x97\xa5\xe6\x9c\xac\""
    /// [UInt8](Class(value: "btn"))      // b"class=\"btn\""
    /// ```
    ///
    /// ## Performance
    ///
    /// Pre-allocates capacity for the full result to minimize reallocations:
    /// - Attribute name length
    /// - 3 bytes for `=` and two `"`
    /// - Value length (UTF-8 byte count)
    ///
    /// - Parameter attribute: Any string attribute conforming to StringAttribute
    /// - Returns: Byte array containing the serialized attribute
    ///
    /// ## See Also
    ///
    /// - ``WHATWG_HTML/StringAttribute``
    public init<T: WHATWG_HTML.StringAttribute>(_ attribute: T) {
        self = []

        // Pre-allocate capacity: name + ="value"
        let attributeBytes = T.attribute.utf8.count
        let valueBytes = attribute.rawValue.utf8.count
        self.reserveCapacity(attributeBytes + 3 + valueBytes)

        // Build: attribute="value"
        self.append(contentsOf: T.attribute.utf8)  // attribute name
        self.append(UInt8.ascii.equalsSign)  // =
        self.append(UInt8.ascii.dquote)  // "
        self.append(contentsOf: attribute.rawValue.utf8)  // value (UTF-8 safe)
        self.append(UInt8.ascii.dquote)  // "
    }
}
