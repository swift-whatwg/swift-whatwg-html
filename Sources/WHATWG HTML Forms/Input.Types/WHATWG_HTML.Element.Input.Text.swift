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

/// `<input type="text">` elements create basic single-line text fields.
extension WHATWG_HTML.Element.Input {
    public struct Text: Sendable, Hashable {
        /// A string that contains the current value of the text entered into the text field.
        public var value: WHATWG_HTML.Attribute.Value<String>?

        /// The id of a datalist element that provides a list of predefined values to suggest to the user.
        public var list: WHATWG_HTML.Attribute.List?

        /// The maximum string length (measured in UTF-16 code units) that the user can enter.
        public var maxlength: WHATWG_HTML.Attribute.Maxlength?

        /// The minimum string length (measured in UTF-16 code units) that the user can enter.
        public var minlength: WHATWG_HTML.Attribute.Minlength?

        /// A regular expression that the input's value must match to be valid.
        public var pattern: WHATWG_HTML.Attribute.Pattern?

        /// A brief hint displayed in the input field when it is empty.
        public var placeholder: WHATWG_HTML.Attribute.Placeholder?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: WHATWG_HTML.Attribute.Readonly?

        /// The visible width of the input field in characters.
        public var size: WHATWG_HTML.Attribute.Size?

        /// Enable or disable spell-checking for this element.
        public var spellcheck: WHATWG_HTML.Attribute.Spellcheck?

        /// Whether the input field is required to have a value before form submission.
        public var required: WHATWG_HTML.Attribute.Required?

        /// Creates a new text input configuration
        public init(
            value: WHATWG_HTML.Attribute.Value<String>? = nil,
            list: WHATWG_HTML.Attribute.List? = nil,
            maxlength: WHATWG_HTML.Attribute.Maxlength? = nil,
            minlength: WHATWG_HTML.Attribute.Minlength? = nil,
            pattern: WHATWG_HTML.Attribute.Pattern? = nil,
            placeholder: WHATWG_HTML.Attribute.Placeholder? = nil,
            readonly: WHATWG_HTML.Attribute.Readonly? = nil,
            size: WHATWG_HTML.Attribute.Size? = nil,
            spellcheck: WHATWG_HTML.Attribute.Spellcheck? = nil,
            required: WHATWG_HTML.Attribute.Required? = nil
        ) {
            self.value = value
            self.list = list
            self.maxlength = maxlength
            self.minlength = minlength
            self.pattern = pattern
            self.placeholder = placeholder
            self.readonly = readonly
            self.size = size
            self.spellcheck = spellcheck
            self.required = required
        }
    }
}

extension WHATWG_HTML.Element.Input {
    /// Creates a new text input element
    public static let text: Self = .text()

    /// Creates a new text input element
    public static func text(
        name: WHATWG_HTML.Attribute.Name? = nil,
        value: WHATWG_HTML.Attribute.Value<String>? = nil,
        list: WHATWG_HTML.Attribute.List? = nil,
        maxlength: WHATWG_HTML.Attribute.Maxlength? = nil,
        minlength: WHATWG_HTML.Attribute.Minlength? = nil,
        pattern: WHATWG_HTML.Attribute.Pattern? = nil,
        placeholder: WHATWG_HTML.Attribute.Placeholder? = nil,
        readonly: WHATWG_HTML.Attribute.Readonly? = nil,
        size: WHATWG_HTML.Attribute.Size? = nil,
        spellcheck: WHATWG_HTML.Attribute.Spellcheck? = nil,
        required: WHATWG_HTML.Attribute.Required? = nil,
        disabled: WHATWG_HTML.Attribute.Disabled? = nil,
        form: WHATWG_HTML.Attribute.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .text(
                .init(
                    value: value,
                    list: list,
                    maxlength: maxlength,
                    minlength: minlength,
                    pattern: pattern,
                    placeholder: placeholder,
                    readonly: readonly,
                    size: size,
                    spellcheck: spellcheck,
                    required: required
                )
            )
        )
    }
}
