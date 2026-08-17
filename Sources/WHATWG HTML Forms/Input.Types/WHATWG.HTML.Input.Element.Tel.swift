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

/// `<input type="tel">` elements are used to let the user enter and edit a telephone number.
/// Unlike `<input type="email">` and `<input type="url">`, the input value is not automatically
/// validated to a particular format before the form can be submitted, because formats for telephone
/// numbers vary so much around the world.
extension WHATWG.HTML.Input.Element {
    public struct Tel: Sendable, Hashable {
        /// A string representing a telephone number, or empty.
        public var value: WHATWG.HTML.Value.Attribute<String>?

        /// The ID of a datalist element that provides a list of suggested telephone numbers.
        public var list: WHATWG.HTML.List.Attribute?

        /// The maximum number of characters the input should accept.
        public var maxlength: WHATWG.HTML.Maxlength.Attribute?

        /// The minimum number of characters required for the input to be valid.
        public var minlength: WHATWG.HTML.Minlength.Attribute?

        /// A regular expression the input's value must match to be valid.
        public var pattern: WHATWG.HTML.Pattern.Attribute?

        /// A hint displayed when the input is empty, to guide the user on the expected format.
        public var placeholder: WHATWG.HTML.Placeholder.Attribute?

        /// Whether the input field should be read-only.
        public var readonly: WHATWG.HTML.Readonly.Attribute?

        /// The visible width of the input field in characters.
        public var size: WHATWG.HTML.Size.Attribute?

        /// Whether the input field is required to have a value before form submission.
        public var required: WHATWG.HTML.Required.Attribute?

        /// Creates a new telephone input configuration
        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            list: WHATWG.HTML.List.Attribute? = nil,
            maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
            minlength: WHATWG.HTML.Minlength.Attribute? = nil,
            pattern: WHATWG.HTML.Pattern.Attribute? = nil,
            placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
            readonly: WHATWG.HTML.Readonly.Attribute? = nil,
            size: WHATWG.HTML.Size.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
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

extension WHATWG.HTML.Input.Element {
    /// Creates a new tel input element
    public static let tel: Self = .tel()

    /// Creates a new telephone input element
    public static func tel(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        list: WHATWG.HTML.List.Attribute? = nil,
        maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
        minlength: WHATWG.HTML.Minlength.Attribute? = nil,
        pattern: WHATWG.HTML.Pattern.Attribute? = nil,
        placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
        readonly: WHATWG.HTML.Readonly.Attribute? = nil,
        size: WHATWG.HTML.Size.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
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
