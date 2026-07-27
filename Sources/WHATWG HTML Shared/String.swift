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
// String transformations for WHATWG HTML Global Attributes
//
// This file contains String initializers that compose through the canonical
// byte representation per the RFC pattern. String is ALWAYS derived from bytes,
// never the other way around (category theory principle).
//
// ===----------------------------------------------------------------------===//

// MARK: - Boolean Attributes

extension String {
    /// Creates HTML attribute string for any boolean attribute
    ///
    /// Composes through canonical byte representation per RFC pattern.
    /// String is derived from bytes, following category theory principle
    /// that bytes → string transformation is more universal.
    ///
    /// ## Category Theory
    ///
    /// ```
    /// BooleanAttribute → [UInt8] (canonical) → String (derived)
    /// ```
    ///
    /// The byte representation is authoritative, String is a view.
    ///
    /// ## Examples
    ///
    /// ```swift
    /// String(Autofocus(value: true))   // "autofocus"
    /// String(Autofocus(value: false))  // "" (empty)
    /// String(Hidden(value: true))      // "hidden"
    ///
    /// // With explicit encoding (advanced)
    /// String(Autofocus(value: true), as: UTF8.self)  // "autofocus"
    /// ```
    ///
    /// ## Performance
    ///
    /// Since boolean attribute names are ASCII-only, this composes efficiently
    /// through the byte representation with minimal overhead.
    ///
    /// - Parameters:
    ///   - attribute: Any boolean attribute conforming to BooleanAttribute
    ///   - encoding: The string encoding (defaults to UTF-8)
    ///
    /// - Returns: HTML attribute string
    ///
    /// ## See Also
    ///
    /// - ``WHATWG_HTML/BooleanAttribute``
    /// - ``[UInt8]/init(_:)-BooleanAttribute``
    public init<T: WHATWG_HTML.BooleanAttribute, Encoding>(
        _ attribute: T,
        as encoding: Encoding.Type = UTF8.self
    ) where Encoding: _UnicodeEncoding, Encoding.CodeUnit == UInt8 {
        self = String(decoding: [UInt8](attribute), as: encoding)
    }
}

// MARK: - String Attributes

extension String {
    /// Creates HTML attribute string for any string attribute
    ///
    /// Composes through canonical byte representation per RFC pattern.
    /// String is derived from bytes, following category theory principle
    /// that bytes → string transformation is more universal.
    ///
    /// ## Category Theory
    ///
    /// ```
    /// StringAttribute → [UInt8] (canonical) → String (derived)
    /// ```
    ///
    /// The byte representation is authoritative, String is a view.
    ///
    /// ## Examples
    ///
    /// ```swift
    /// String(Id(value: "main"))        // "id=\"main\""
    /// String(Id(value: "my-div"))      // "id=\"my-div\""
    /// String(Id(value: "日本"))        // "id=\"日本\""
    /// String(Class(value: "btn"))      // "class=\"btn\""
    ///
    /// // With explicit encoding (advanced)
    /// String(Id(value: "main"), as: UTF8.self)  // "id=\"main\""
    /// ```
    ///
    /// ## UTF-8 Safety
    ///
    /// Since HTML supports full UTF-8 (unlike ASCII-only RFC protocols),
    /// the byte → string transformation correctly handles multi-byte
    /// Unicode sequences.
    ///
    /// - Parameters:
    ///   - attribute: Any string attribute conforming to StringAttribute
    ///   - encoding: The string encoding (defaults to UTF-8)
    ///
    /// - Returns: HTML attribute string
    ///
    /// ## See Also
    ///
    /// - ``WHATWG_HTML/StringAttribute``
    /// - ``[UInt8]/init(_:)-StringAttribute``
    public init<T: WHATWG_HTML.StringAttribute, Encoding>(
        _ attribute: T,
        as encoding: Encoding.Type = UTF8.self
    ) where Encoding: _UnicodeEncoding, Encoding.CodeUnit == UInt8 {
        self = String(decoding: [UInt8](attribute), as: encoding)
    }
}
