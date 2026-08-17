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
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG_HTML.Element {
    /// Represents an HTML option element (`<option>`), which defines an item contained in a
    /// `<select>`, an `<optgroup>`, or a `<datalist>` element.
    ///
    /// The `Option` struct provides a type-safe way to create option elements for dropdown menus,
    /// selection lists, and autocomplete controls.
    ///
    /// ## Example
    ///
    /// ```swift
    /// select {
    ///     option(value: "dog", selected: .init()) {
    ///         "Dog"
    ///     }
    ///     option(value: "cat") {
    ///         "Cat"
    ///     }
    ///     option(value: "hamster", disabled: .init()) {
    ///         "Hamster"
    ///     }
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Always provide a meaningful value for each option
    /// - Use the `selected` attribute to pre-select an option
    /// - Use the `disabled` attribute to make an option unselectable when appropriate
    /// - Consider using `optgroup` to organize options into logical groups for better usability
    ///
    public struct Option: WHATWG_HTML.Element.`Protocol` {
        /// If set, this option is not checkable. Often browsers grey out such control
        /// and it won't receive browsing events like mouse clicks or focus-related ones.
        public var disabled: WHATWG_HTML.Attribute.Disabled?

        /// Text for the label indicating the meaning of the option.
        /// If not defined, the element's text content is used.
        public var label: WHATWG_HTML.Attribute.Label?

        /// If present, indicates that the option is initially selected.
        /// In a single-select control, only one option can be selected at a time.
        public var selected: WHATWG_HTML.Attribute.Selected?

        /// The value to be submitted with the form, should this option be selected.
        /// If omitted, the value is taken from the text content of the option element.
        public var value: WHATWG_HTML.Attribute.Value<String>

        /// Creates a new Option element with the specified attributes.
        ///
        /// - Parameters:
        ///   - disabled: If set, this option cannot be selected
        ///   - label: Text label for the option
        ///   - selected: If set, this option is initially selected
        ///   - value: The value to be submitted if this option is selected
        public init(
            disabled: WHATWG_HTML.Attribute.Disabled? = nil,
            label: WHATWG_HTML.Attribute.Label? = nil,
            selected: WHATWG_HTML.Attribute.Selected? = nil,
            value: WHATWG_HTML.Attribute.Value<String>
        ) {
            self.disabled = disabled
            self.label = label
            self.selected = selected
            self.value = value
        }
    }
}

extension WHATWG_HTML.Element.Option {
    /// The HTML tag name
    @inlinable public static var tag: String { "option" }

    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(
        model: .categories([.`option element inner content`])
    )
}
