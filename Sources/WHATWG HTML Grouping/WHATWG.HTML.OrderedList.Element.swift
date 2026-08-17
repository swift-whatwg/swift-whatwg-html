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

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.OrderedList {
    /// Represents an HTML ordered list element (`<ol>`), which displays a numbered list of items.
    ///
    /// The `OrderedList` struct provides a type-safe way to create HTML ordered lists with various attributes.
    ///
    /// ## Example
    ///
    /// ```swift
    /// ol {
    ///     li { "Mix flour, baking powder, sugar, and salt." }
    ///     li { "In another bowl, mix eggs, milk, and oil." }
    ///     li { "Stir both mixtures together." }
    ///     li { "Fill muffin tray 3/4 full." }
    ///     li { "Bake for 20 minutes." }
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Use ordered lists when the sequence of the items is important (like steps in a process)
    /// - Use `reversed` when counting down or showing items in reverse order
    /// - Nest lists as needed to show hierarchical information
    /// - For styling, prefer CSS over the `type` attribute when possible
    ///
    public struct Element: WHATWG.HTML.Element {
        /// Boolean attribute specifying that the list's items are in reverse order (high to low)
        public var reversed: WHATWG.HTML.Reversed.Attribute?

        /// Specifies the starting number for the list items
        public var start: WHATWG.HTML.Start.Attribute?

        /// Specifies the numbering type (1, a, A, i, I)
        public var type: WHATWG.HTML.OrderedList.`Type`.Attribute?

        /// Creates a new OrderedList element with the specified attributes.
        ///
        /// - Parameters:
        ///   - reversed: Boolean attribute that reverses the order of items
        ///   - start: The starting number for the list
        ///   - type: The numbering type to use (list items)
        public init(
            reversed: WHATWG.HTML.Reversed.Attribute? = nil,
            start: WHATWG.HTML.Start.Attribute? = nil,
            type: WHATWG.HTML.OrderedList.`Type`.Attribute? = nil
        ) {
            self.reversed = reversed
            self.start = start
            self.type = type

        }
    }
}

extension WHATWG.HTML.OrderedList.Element {
    /// The HTML tag name
    @inlinable public static var tag: String { "ol" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
