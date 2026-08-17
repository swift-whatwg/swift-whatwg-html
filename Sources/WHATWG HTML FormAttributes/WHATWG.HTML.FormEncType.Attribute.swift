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

public import RFC_2045
public import WHATWG_HTML_Shared

extension WHATWG.HTML.FormEncType {
    /// An attribute that specifies how form data should be encoded when submitted via a specific button.
    ///
    /// The `formenctype` attribute overrides the form's `enctype` attribute for the specific submit button.
    /// It defines the MIME type of the form submission and is only relevant when the form's method is POST.
    ///
    /// ## Academic Correctness
    ///
    /// Per WHATWG HTML specification, the formenctype attribute must be a valid MIME type.
    /// This implementation uses `RFC_2045.ContentType` to ensure academic correctness
    /// per RFC 2045 MIME type specifications.
    ///
    /// ## Usage Notes
    ///
    /// - Only valid on `<button>` and `<input type="submit">` elements
    /// - Overrides the form's `enctype` attribute when this button is used to submit
    /// - Same encoding types as `enctype`: urlencoded, multipartFormData, textPlain
    /// - Only applies to forms using the POST method
    ///
    /// ## Examples
    ///
    /// ```swift
    /// // Button that overrides form encoding for file upload
    /// HTML.button
    ///     .type(.submit)
    ///     .formenctype(.multipartFormData)
    ///     .text("Upload File")
    ///
    /// // Submit button with debug encoding
    /// HTML.input
    ///     .type(.submit)
    ///     .formenctype(.textPlain)
    ///     .value("Debug Submit")
    /// ```
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        /// The attribute value
        public let rawValue: String

        /// Initialize with a value for the formenctype attribute
        public init(value: String) { self.rawValue = value }

        /// Initialize with an RFC 2045 Content-Type
        public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
    }
}

extension WHATWG.HTML.FormEncType.Attribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "formenctype" }
}

// MARK: - Form Encoding Types

extension WHATWG.HTML.FormEncType.Attribute {
    /// Standard form encoding (default) - application/x-www-form-urlencoded
    public static let urlEncoded = WHATWG.HTML.FormEncType.Attribute(
        contentType: .applicationXWWWFormURLEncoded
    )

    /// Required for file uploads - multipart/form-data (RFC 7578)
    public static let multipartFormData = WHATWG.HTML.FormEncType.Attribute(
        contentType: .multipartFormData()
    )

    /// Minimal encoding, useful for debugging - text/plain
    public static let textPlain = WHATWG.HTML.FormEncType.Attribute(contentType: .textPlain)
}
