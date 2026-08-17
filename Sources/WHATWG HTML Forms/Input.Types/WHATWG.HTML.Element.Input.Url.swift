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

/// `<input type="url">` elements are used to let the user enter and edit a URL.
/// The input value is automatically validated to ensure that it's either empty or a properly-formatted URL.
extension WHATWG.HTML.Element.Input {
    public struct Url: Sendable, Hashable {
        /// A string representing a URL, or empty.
        public var value: WHATWG.HTML.Attribute.Value<String>?

        /// The id of a datalist element that provides a list of predefined values to suggest to the user.
        public var list: WHATWG.HTML.Attribute.List?

        /// The maximum string length that the user can enter.
        public var maxlength: WHATWG.HTML.Attribute.Maxlength?

        /// The minimum string length that the user can enter.
        public var minlength: WHATWG.HTML.Attribute.Minlength?

        /// A regular expression that the input's value must match to be valid.
        public var pattern: WHATWG.HTML.Attribute.Pattern?

        /// A brief hint displayed in the input field when it is empty.
        public var placeholder: WHATWG.HTML.Attribute.Placeholder?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: WHATWG.HTML.Attribute.Readonly?

        /// The visible width of the input field in characters.
        public var size: WHATWG.HTML.Attribute.Size?

        /// Enable or disable spell-checking for this element.
        public var spellcheck: WHATWG.HTML.Attribute.Spellcheck?

        /// Whether the input field is required to have a value before form submission.
        public var required: WHATWG.HTML.Attribute.Required?

        /// Creates a new URL input configuration
        public init(
            value: WHATWG.HTML.Attribute.Value<String>? = nil,
            list: WHATWG.HTML.Attribute.List? = nil,
            maxlength: WHATWG.HTML.Attribute.Maxlength? = nil,
            minlength: WHATWG.HTML.Attribute.Minlength? = nil,
            pattern: WHATWG.HTML.Attribute.Pattern? = nil,
            placeholder: WHATWG.HTML.Attribute.Placeholder? = nil,
            readonly: WHATWG.HTML.Attribute.Readonly? = nil,
            size: WHATWG.HTML.Attribute.Size? = nil,
            spellcheck: WHATWG.HTML.Attribute.Spellcheck? = nil,
            required: WHATWG.HTML.Attribute.Required? = nil
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

extension WHATWG.HTML.Element.Input {
    /// Creates a new url input element
    public static let url: Self = .url()

    /// Creates a new URL input element
    public static func url(
        name: WHATWG.HTML.Attribute.Name? = nil,
        value: WHATWG.HTML.Attribute.Value<String>? = nil,
        list: WHATWG.HTML.Attribute.List? = nil,
        maxlength: WHATWG.HTML.Attribute.Maxlength? = nil,
        minlength: WHATWG.HTML.Attribute.Minlength? = nil,
        pattern: WHATWG.HTML.Attribute.Pattern? = nil,
        placeholder: WHATWG.HTML.Attribute.Placeholder? = nil,
        readonly: WHATWG.HTML.Attribute.Readonly? = nil,
        size: WHATWG.HTML.Attribute.Size? = nil,
        spellcheck: WHATWG.HTML.Attribute.Spellcheck? = nil,
        required: WHATWG.HTML.Attribute.Required? = nil,
        disabled: WHATWG.HTML.Attribute.Disabled? = nil,
        form: WHATWG.HTML.Attribute.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .url(
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
