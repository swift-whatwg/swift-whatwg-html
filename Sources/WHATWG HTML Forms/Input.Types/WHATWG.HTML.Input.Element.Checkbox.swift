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
public import WHATWG_HTML_Shared

/// `<input type="checkbox">` elements are rendered by default as boxes that are checked (ticked) when activated.
/// A checkbox allows you to select single values for submission in a form (or not).
///
/// Note: Radio buttons are similar to checkboxes, but with an important distinction — same-named radio buttons are
/// grouped into a set in which only one radio button can be selected at a time, whereas checkboxes allow you to
/// turn single values on and off. Where multiple same-named controls exist, radio buttons allow one to be selected
/// out of them all, whereas checkboxes allow multiple values to be selected.
extension WHATWG.HTML.Input.Element {
    public struct Checkbox: Sendable, Hashable {
        /// A string representing the value of the checkbox. This is not displayed on the client-side, but on the server
        /// this is the value given to the data submitted with the checkbox's name. If the value attribute is omitted,
        /// the default value for the checkbox is "on".
        ///
        /// Note: If a checkbox is unchecked when its form is submitted, neither the name nor the value is
        /// submitted to the server.
        public var value: WHATWG.HTML.Value.Attribute<String>?

        /// A boolean attribute indicating whether this checkbox is checked by default (when the page loads).
        public var checked: WHATWG.HTML.Checked.Attribute?

        /// A boolean attribute indicating whether this checkbox is checked by default (when the page loads).
        public var required: WHATWG.HTML.Required.Attribute?

        /// Creates a new checkbox input configuration
        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            checked: WHATWG.HTML.Checked.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
        ) {
            self.value = value
            self.checked = checked
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {
    /// Creates a new checkbox input element
    public static let checkbox: Self = .checkbox()

    /// Creates a new checkbox input element
    public static func checkbox(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        checked: WHATWG.HTML.Checked.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .checkbox(.init(value: value, checked: checked, required: required))
        )
    }
}
