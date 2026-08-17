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
import WHATWG_HTML_Shared

/// `<input type="text">` elements create basic single-line text fields.
extension WHATWG_HTML.Element.Input {
    public struct Text: Sendable, Hashable {
        /// A string that contains the current value of the text entered into the text field.
        public var value: Attribute.Value<String>?

        /// The id of a datalist element that provides a list of predefined values to suggest to the user.
        public var list: Attribute.List?

        /// The maximum string length (measured in UTF-16 code units) that the user can enter.
        public var maxlength: Attribute.Maxlength?

        /// The minimum string length (measured in UTF-16 code units) that the user can enter.
        public var minlength: Attribute.Minlength?

        /// A regular expression that the input's value must match to be valid.
        public var pattern: Attribute.Pattern?

        /// A brief hint displayed in the input field when it is empty.
        public var placeholder: Attribute.Placeholder?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: Attribute.Readonly?

        /// The visible width of the input field in characters.
        public var size: Attribute.Size?

        /// Enable or disable spell-checking for this element.
        public var spellcheck: Attribute.Spellcheck?

        /// Whether the input field is required to have a value before form submission.
        public var required: Attribute.Required?

        /// Creates a new text input configuration
        public init(
            value: Attribute.Value<String>? = nil,
            list: Attribute.List? = nil,
            maxlength: Attribute.Maxlength? = nil,
            minlength: Attribute.Minlength? = nil,
            pattern: Attribute.Pattern? = nil,
            placeholder: Attribute.Placeholder? = nil,
            readonly: Attribute.Readonly? = nil,
            size: Attribute.Size? = nil,
            spellcheck: Attribute.Spellcheck? = nil,
            required: Attribute.Required? = nil
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
        name: Attribute.Name? = nil,
        value: Attribute.Value<String>? = nil,
        list: Attribute.List? = nil,
        maxlength: Attribute.Maxlength? = nil,
        minlength: Attribute.Minlength? = nil,
        pattern: Attribute.Pattern? = nil,
        placeholder: Attribute.Placeholder? = nil,
        readonly: Attribute.Readonly? = nil,
        size: Attribute.Size? = nil,
        spellcheck: Attribute.Spellcheck? = nil,
        required: Attribute.Required? = nil,
        disabled: Attribute.Disabled? = nil,
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
