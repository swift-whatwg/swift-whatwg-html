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
import WHATWG_HTML_Shared

/// `<input type="tel">` elements are used to let the user enter and edit a telephone number.
/// Unlike `<input type="email">` and `<input type="url">`, the input value is not automatically
/// validated to a particular format before the form can be submitted, because formats for telephone
/// numbers vary so much around the world.
extension WHATWG_HTML.Element.Input {
    public struct Tel: Sendable, Hashable {
        /// A string representing a telephone number, or empty.
        public var value: Attribute.Value<String>?

        /// The ID of a datalist element that provides a list of suggested telephone numbers.
        public var list: Attribute.List?

        /// The maximum number of characters the input should accept.
        public var maxlength: Attribute.Maxlength?

        /// The minimum number of characters required for the input to be valid.
        public var minlength: Attribute.Minlength?

        /// A regular expression the input's value must match to be valid.
        public var pattern: Attribute.Pattern?

        /// A hint displayed when the input is empty, to guide the user on the expected format.
        public var placeholder: Attribute.Placeholder?

        /// Whether the input field should be read-only.
        public var readonly: Attribute.Readonly?

        /// The visible width of the input field in characters.
        public var size: Attribute.Size?

        /// Whether the input field is required to have a value before form submission.
        public var required: Attribute.Required?

        /// Creates a new telephone input configuration
        public init(
            value: Attribute.Value<String>? = nil,
            list: Attribute.List? = nil,
            maxlength: Attribute.Maxlength? = nil,
            minlength: Attribute.Minlength? = nil,
            pattern: Attribute.Pattern? = nil,
            placeholder: Attribute.Placeholder? = nil,
            readonly: Attribute.Readonly? = nil,
            size: Attribute.Size? = nil,
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
            self.required = required
        }
    }
}

extension WHATWG_HTML.Element.Input {
    /// Creates a new tel input element
    public static let tel: Self = .tel()

    /// Creates a new telephone input element
    public static func tel(
        name: Attribute.Name? = nil,
        value: Attribute.Value<String>? = nil,
        list: Attribute.List? = nil,
        maxlength: Attribute.Maxlength? = nil,
        minlength: Attribute.Minlength? = nil,
        pattern: Attribute.Pattern? = nil,
        placeholder: Attribute.Placeholder? = nil,
        readonly: Attribute.Readonly? = nil,
        size: Attribute.Size? = nil,
        required: Attribute.Required? = nil,
        disabled: Attribute.Disabled? = nil,
        form: WHATWG_HTML.Attribute.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .tel(
                .init(
                    value: value,
                    list: list,
                    maxlength: maxlength,
                    minlength: minlength,
                    pattern: pattern,
                    placeholder: placeholder,
                    readonly: readonly,
                    size: size,
                    required: required
                )
            )
        )
    }
}
