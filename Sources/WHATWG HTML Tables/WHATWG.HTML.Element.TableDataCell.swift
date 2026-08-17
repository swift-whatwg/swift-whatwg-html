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
public import WHATWG_HTML_TableAttributes

extension WHATWG.HTML.Element {
    /// Represents an HTML table data cell element (`<td>`), which defines a cell of a table that contains data.
    ///
    /// The `TableDataCell` struct provides a type-safe way to create HTML table data cells with various attributes
    /// that help define the structure and relationship of the cell to other cells in the table.
    ///
    /// ## Example
    ///
    /// ```swift
    /// table {
    ///     tr {
    ///         th(scope: .row) { "Player" }
    ///         td { "John" }
    ///         td { "42" }
    ///     }
    ///     tr {
    ///         th(scope: .row) { "Score" }
    ///         td(colspan: 2) { "High score: 95" }
    ///     }
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Use `<td>` within a `<tr>` element for table data cells
    /// - For header cells, use `<th>` instead of `<td>`
    /// - Use `colspan` and `rowspan` attributes to span multiple columns or rows when needed
    /// - Associate data cells with headers using the `headers` attribute for complex tables
    /// - Use CSS properties instead of deprecated attributes for styling
    /// - Ensure tables have a clear structure with `<thead>`, `<tbody>`, and `<tfoot>` when appropriate
    ///
    public struct TableDataCell: WHATWG.HTML.Element.`Protocol` {

        /// Number of columns this cell spans
        public var colspan: WHATWG.HTML.Attribute.ColSpan?

        /// Space-separated list of IDs of header cells that provide headers for this cell
        public var headers: WHATWG.HTML.Attribute.Headers?

        /// Number of rows this cell spans
        public var rowspan: WHATWG.HTML.Attribute.RowSpan?

        /// Creates a new TableDataCell element with the specified attributes.
        ///
        /// - Parameters:
        ///   - colspan: Number of columns this cell spans (default is 1)
        ///   - headers: IDs of related header cells for accessibility
        ///   - rowspan: Number of rows this cell spans (default is 1)
        public init(
            colspan: WHATWG.HTML.Attribute.ColSpan? = nil,
            headers: WHATWG.HTML.Attribute.Headers? = nil,
            rowspan: WHATWG.HTML.Attribute.RowSpan? = nil
        ) {
            self.colspan = colspan
            self.headers = headers
            self.rowspan = rowspan
        }
    }
}

extension WHATWG.HTML.Element.TableDataCell {
    /// The HTML tag name
    @inlinable public static var tag: String { "td" }
    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = []
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.flow]))
}
