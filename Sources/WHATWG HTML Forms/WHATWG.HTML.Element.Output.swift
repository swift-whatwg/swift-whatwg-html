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

public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Element {
    /// Represents an HTML output element (`<output>`), which is a container element into which a site or app can inject
    /// the results of a calculation or the outcome of a user action.
    ///
    /// The `Output` struct provides a type-safe way to create HTML output elements with various attributes.
    ///
    /// ## Example
    ///
    /// ```swift
    /// output(for: ["a", "b"], name: "result") {
    ///     "60"
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Use the `for` attribute to indicate which elements contributed to the calculation
    /// - Use the `form` attribute to associate the output with a form outside its hierarchy
    /// - Many browsers implement this element as an `aria-live` region, making it useful for accessibility
    ///
    public struct Output: WHATWG.HTML.Element.`Protocol` {
        /// A space-separated list of other elements' IDs, indicating that those elements contributed
        /// input values to (or otherwise affected) the calculation.
        public var `for`: WHATWG.HTML.Attribute.For?

        /// The form element to associate the output with (its form owner).
        /// Allows associating the output with a form anywhere in the document.
        public var form: WHATWG.HTML.Attribute.Form.ID?

        /// The element's name. Used in the form.elements API.
        public var name: WHATWG.HTML.Attribute.Name?

        /// Creates a new Output element with the specified attributes.
        ///
        /// - Parameters:
        ///   - for: IDs of elements that contributed to the calculation
        ///   - form: ID of the form to associate with
        ///   - name: Name of the output element
        public init(
            `for`: WHATWG.HTML.Attribute.For? = nil,
            form: WHATWG.HTML.Attribute.Form.ID? = nil,
            name: WHATWG.HTML.Attribute.Name? = nil
        ) {
            self.`for` = `for`
            self.form = form
            self.name = name

        }
    }
}

extension WHATWG.HTML.Element.Output {
    /// The HTML tag name
    @inlinable public static var tag: String { "output" }

    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.phrasing]))
}
