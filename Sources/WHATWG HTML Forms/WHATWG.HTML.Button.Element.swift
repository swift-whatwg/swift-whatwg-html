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

extension WHATWG.HTML.Button {
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
    public struct Element: WHATWG.HTML.Element {
        /// The button type (submit, reset, or button)
        public var type: WHATWG.HTML.Button.`Type`.Attribute?

        /// Whether the button is disabled
        public var disabled: WHATWG.HTML.Disabled.Attribute?

        /// The ID of the form this button is associated with
        public var form: WHATWG.HTML.Form.Attribute.ID?

        /// The name of the button, used when submitting forms
        public var name: WHATWG.HTML.Name.Attribute?

        /// The value associated with the button, used when submitting forms
        public var value: WHATWG.HTML.Value.Attribute<String>?

        /// Whether the button should automatically get focus on page load
        public var autofocus: WHATWG.HTML.Autofocus.Attribute?

        /// The URL that processes the form submission (for submit buttons)
        public var formaction: WHATWG.HTML.FormAction.Attribute?

        /// How form data should be encoded before submission (for submit buttons)
        public var formenctype: WHATWG.HTML.FormEncType.Attribute?

        /// The HTTP method used for form submission (for submit buttons)
        public var formmethod: WHATWG.HTML.FormMethod.Attribute?

        /// Whether to skip form validation on submission (for submit buttons)
        public var formnovalidate: WHATWG.HTML.FormNovalidate.Attribute?

        /// Where to display the response after form submission (for submit buttons)
        public var formtarget: WHATWG.HTML.FormTarget.Attribute?

        /// The ID of the popover element to control (for popover control buttons)
        public var popovertarget: WHATWG.HTML.PopoverTarget.Attribute?

        /// The action to perform on the popover (show, hide, or toggle)
        public var popovertargetaction: WHATWG.HTML.PopoverTargetAction.Attribute?

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
            type: WHATWG.HTML.Button.`Type`.Attribute? = nil,
            disabled: WHATWG.HTML.Disabled.Attribute? = nil,
            form: WHATWG.HTML.Form.Attribute.ID? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil,
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            autofocus: WHATWG.HTML.Autofocus.Attribute? = nil,
            formaction: WHATWG.HTML.FormAction.Attribute? = nil,
            formenctype: WHATWG.HTML.FormEncType.Attribute? = nil,
            formmethod: WHATWG.HTML.FormMethod.Attribute? = nil,
            formnovalidate: WHATWG.HTML.FormNovalidate.Attribute? = nil,
            formtarget: WHATWG.HTML.FormTarget.Attribute? = nil,
            popovertarget: WHATWG.HTML.PopoverTarget.Attribute? = nil,
            popovertargetaction: WHATWG.HTML.PopoverTargetAction.Attribute? = nil
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

extension WHATWG.HTML.Button.Element {
    /// The HTML tag name
    @inlinable public static var tag: String { "button" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .interactive, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
