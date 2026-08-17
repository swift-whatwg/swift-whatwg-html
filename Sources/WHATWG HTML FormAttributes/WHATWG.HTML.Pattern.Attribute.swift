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

public import WHATWG_HTML_Shared

extension WHATWG.HTML.Pattern {
    /// An attribute that specifies a regular expression pattern for form input validation.
    ///
    /// The `pattern` attribute defines a regular expression that the input's value must match
    /// to pass constraint validation. When a value doesn't match the pattern, the form control's
    /// `ValidityState.patternMismatch` property becomes `true`.
    ///
    /// ## Usage Notes
    ///
    /// - Valid on text-based `<input>` types: text, tel, email, url, password, and search
    /// - The pattern must be a valid JavaScript/ECMAScript regular expression
    /// - Compiled with the 'v' flag (Unicode-aware)
    /// - The pattern must match the entire input value (as if `^(?:` were implied at the start and `)$` at the end)
    /// - Do not include forward slashes around the pattern (unlike JavaScript regex literals)
    /// - For accessibility, always:
    ///   - Provide visible instructions near the input explaining the required format
    ///   - Include a title attribute describing the pattern
    ///   - Never rely solely on the title attribute for instructions
    ///
    /// ## Regular Expression Considerations
    ///
    /// - The following characters must be escaped if used literally: `(`, `)`, `[`, `{`, `}`, `/`, `-`, `|`, `]`, and `\`
    /// - No pattern is applied if the attribute value is empty or invalid
    /// - Element-specific validation (like email format) still applies even without a pattern
    ///
    /// ## Examples
    ///
    /// Username (4-8 lowercase letters):
    /// ```html
    /// <input type="text" pattern="[a-z]{4,8}" title="4 to 8 lowercase letters">
    /// ```
    ///
    /// US Phone Number:
    /// ```html
    /// <input type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" title="Format: 123-456-7890">
    /// ```
    ///
    /// US Zip Code:
    /// ```html
    /// <input type="text" pattern="[0-9]{5}(-[0-9]{4})?" title="Five digit zip code, optional four digit extension">
    /// ```
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        /// The attribute value
        public let rawValue: String

        /// Initialize with a value for the pattern attribute
        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Pattern.Attribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "pattern" }
}

extension WHATWG.HTML.Pattern.Attribute {
    /// Common regex pattern for a username (alphanumeric, 3-16 characters)
    public static let username = WHATWG.HTML.Pattern.Attribute("[a-zA-Z0-9]{3,16}")

    /// Common regex pattern for a US phone number (###-###-####)
    public static let usPhone = WHATWG.HTML.Pattern.Attribute("[0-9]{3}-[0-9]{3}-[0-9]{4}")

    /// Common regex pattern for a US zip code (5 digits, optional 4-digit extension)
    public static let usZipCode = WHATWG.HTML.Pattern.Attribute("[0-9]{5}(-[0-9]{4})?")

    /// Common regex pattern for a positive integer
    public static let integer = WHATWG.HTML.Pattern.Attribute("[0-9]+")

    /// Common regex pattern for an alphanumeric string
    public static let alphanumeric = WHATWG.HTML.Pattern.Attribute("[a-zA-Z0-9]+")
}
