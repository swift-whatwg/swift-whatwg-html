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

/// An attribute that specifies an abbreviated description for a table header cell.
///
/// The `abbr` attribute contains a short, abbreviated description of a header cell's content.
/// This is particularly useful for screen readers when the header text is lengthy, providing
/// a concise alternative that can be announced when reading through data cells.
///
/// ## Usage Notes
///
/// - Only valid on `<th>` (table header) elements
/// - Provides abbreviated text for accessibility purposes
/// - Screen readers may use this when reading data cells associated with the header
/// - Not displayed visually in the browser
///
/// ## Best Practices
///
/// - Use when header cell content is long or complex
/// - Keep abbreviations clear and meaningful
/// - Ensure the abbreviation still conveys the essential information
/// - Consider users who rely on screen readers when crafting abbreviations
///
/// ## Example
///
/// ```swift
/// th(abbr: "Dept", scope: .col) {
///     "Department of Human Resources"
/// }
/// ```
@dynamicMemberLookup public struct Abbr: WHATWG_HTML.StringAttribute {

    /// The abbreviated description text
    public let rawValue: String

    public init(value: String) { self.rawValue = value }
}

extension Abbr {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "abbr" }
}
