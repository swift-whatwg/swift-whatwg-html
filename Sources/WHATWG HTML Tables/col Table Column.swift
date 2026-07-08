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

public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared
public import WHATWG_HTML_TableAttributes

/// Represents an HTML table column element (`<col>`), which defines properties for one or more columns
/// in a table.
///
/// The `TableColumn` struct provides a type-safe way to create HTML column elements. The `<col>`
/// element is used within a `<colgroup>` element to define properties like styling for specific
/// columns in a table.
///
/// ## Example
///
/// ```swift
/// table {
///   caption {
///     "Superheros and sidekicks"
///   }
///   colgroup {
///     col()
///     col(span: 2, class: "batman")
///     col(span: 2, class: "flash")
///   }
///   // Table rows would follow here
/// }
/// ```
///
/// ## Usage Notes
///
/// - The `<col>` element is a void element (has no content)
/// - Must be used as a child of a `<colgroup>` element that has no span attribute
/// - Primarily used to apply styles to entire columns in a table
/// - Limited CSS properties have an effect when applied to col elements:
///   - background: Sets background for cells in the column
///   - border: Only applies if the table has border-collapse: collapse
///   - visibility: The value 'collapse' hides column cells
///   - width: Defines minimum width for the column
///
/// ## Best Practices
///
/// - Use the span attribute to efficiently apply properties to multiple columns
/// - Use semantic class names that describe the column's purpose
/// - For complex tables, consider adding column spans to improve readability
/// - Use CSS to style column properties rather than deprecated HTML attributes
///
/// - Note: When rendered, this generates an HTML `<col>` element with no closing tag.
public struct TableColumn: WHATWG_HTML.Element.`Protocol` {

    /// The number of consecutive columns this column element spans
    public var span: Span?

    /// The width for the column
    public var width: Width?

    /// Creates a new TableColumn element with optional span and width attributes.
    ///
    /// The TableColumn element is a void element (has no content) that defines styling
    /// and behavior for one or more columns in a table.
    ///
    /// - Parameters:
    ///   - span: The number of consecutive columns this `<col>` element spans
    ///   - width: The width for the column(s)
    public init(span: Span? = nil, width: Width? = nil) {
        self.span = span
        self.width = width
    }
}

extension TableColumn {
    /// The HTML tag name
    @inlinable public static var tag: String { "col" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .nothing)
}
