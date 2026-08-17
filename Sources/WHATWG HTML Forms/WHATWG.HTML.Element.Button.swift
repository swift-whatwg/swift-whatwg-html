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
    /// Represents an HTML button element (`<button>`), which is used to create a clickable button.
    ///
    /// The `Button` struct provides a type-safe way to create HTML button elements. Buttons can be
    /// configured with various attributes such as type, disabled status, and form association.
    ///
    /// ## Example
    ///
    /// ```swift
    /// button {
    ///     "Click me"
    /// }
    ///
    /// button(type: .submit, disabled: true) {
    ///     "Submit"
    /// }
    /// ```
    ///
    /// ## Button Types
    ///
    /// Buttons can have different types that define their behavior:
    /// - `.submit`: Submits the form data (default)
    /// - `.reset`: Resets the form data to its initial values
    /// - `.button`: No default behavior, typically used with JavaScript
    ///
    /// ## Accessibility
    ///
    /// When creating buttons, ensure you provide meaningful text content to aid users
    /// with assistive technologies. For icon buttons, include descriptive text that can be read
    /// by screen readers, even if you visually hide it with CSS.
    ///
    /// Interactive elements such as buttons should have:
    /// - A large enough area to be easy to activate (minimum 44×44 CSS pixels)
    /// - Sufficient spacing between other interactive elements
    /// - Adequate color contrast with the background
    ///
    /// For toggle buttons, use the `aria-pressed` attribute to indicate state.
    ///
    /// - Note: When rendered, this generates an HTML `<button>` element that is interactive and clickable.
    public struct Button: WHATWG.HTML.Element.`Protocol` {
        /// The button type (submit, reset, or button)
        public var type: WHATWG.HTML.Attribute.ButtonType?

        /// Whether the button is disabled
        public var disabled: WHATWG.HTML.Attribute.Disabled?

        /// The ID of the form this button is associated with
        public var form: WHATWG.HTML.Attribute.Form.ID?

        /// The name of the button, used when submitting forms
        public var name: WHATWG.HTML.Attribute.Name?

        /// The value associated with the button, used when submitting forms
        public var value: WHATWG.HTML.Attribute.Value<String>?

        /// Whether the button should automatically get focus on page load
        public var autofocus: WHATWG.HTML.Attribute.Autofocus?

        /// The URL that processes the form submission (for submit buttons)
        public var formaction: WHATWG.HTML.Attribute.FormAction?

        /// How form data should be encoded before submission (for submit buttons)
        public var formenctype: WHATWG.HTML.Attribute.FormEncType?

        /// The HTTP method used for form submission (for submit buttons)
        public var formmethod: WHATWG.HTML.Attribute.FormMethod?

        /// Whether to skip form validation on submission (for submit buttons)
        public var formnovalidate: WHATWG.HTML.Attribute.FormNovalidate?

        /// Where to display the response after form submission (for submit buttons)
        public var formtarget: WHATWG.HTML.Attribute.FormTarget?

        /// The ID of the popover element to control (for popover control buttons)
        public var popovertarget: WHATWG.HTML.Attribute.PopoverTarget?

        /// The action to perform on the popover (show, hide, or toggle)
        public var popovertargetaction: WHATWG.HTML.Attribute.PopoverTargetAction?

        /// Creates a new Button element with the specified attributes and content.
        ///
        /// - Parameters:
        ///   - type: The button type (submit, reset, or button)
        ///   - disabled: Whether the button is disabled
        ///   - form: The ID of the form this button is associated with
        ///   - name: The name of the button, used when submitting forms
        ///   - value: The value associated with the button, used when submitting forms
        ///   - autofocus: Whether the button should automatically get focus on page load
        ///   - formaction: The URL that processes the form submission (for submit buttons)
        ///   - formenctype: How form data should be encoded before submission (for submit buttons)
        ///   - formmethod: The HTTP method used for form submission (for submit buttons)
        ///   - formnovalidate: Whether to skip form validation on submission (for submit buttons)
        ///   - formtarget: Where to display the response after form submission (for submit buttons)
        ///   - popovertarget: The ID of the popover element to control
        ///   - popovertargetaction: The action to perform on the popover (show, hide, or toggle)
        public init(
            type: WHATWG.HTML.Attribute.ButtonType? = nil,
            disabled: WHATWG.HTML.Attribute.Disabled? = nil,
            form: WHATWG.HTML.Attribute.Form.ID? = nil,
            name: WHATWG.HTML.Attribute.Name? = nil,
            value: WHATWG.HTML.Attribute.Value<String>? = nil,
            autofocus: WHATWG.HTML.Attribute.Autofocus? = nil,
            formaction: WHATWG.HTML.Attribute.FormAction? = nil,
            formenctype: WHATWG.HTML.Attribute.FormEncType? = nil,
            formmethod: WHATWG.HTML.Attribute.FormMethod? = nil,
            formnovalidate: WHATWG.HTML.Attribute.FormNovalidate? = nil,
            formtarget: WHATWG.HTML.Attribute.FormTarget? = nil,
            popovertarget: WHATWG.HTML.Attribute.PopoverTarget? = nil,
            popovertargetaction: WHATWG.HTML.Attribute.PopoverTargetAction? = nil
        ) {
            self.type = type
            self.disabled = disabled
            self.form = form
            self.name = name
            self.value = value
            self.autofocus = autofocus
            self.formaction = formaction
            self.formenctype = formenctype
            self.formmethod = formmethod
            self.formnovalidate = formnovalidate
            self.formtarget = formtarget
            self.popovertarget = popovertarget
            self.popovertargetaction = popovertargetaction
        }
    }
}

extension WHATWG.HTML.Element.Button {
    /// The HTML tag name
    @inlinable public static var tag: String { "button" }

    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = [
        .flow, .phrasing, .interactive, .palpable,
    ]
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.phrasing]))
}
