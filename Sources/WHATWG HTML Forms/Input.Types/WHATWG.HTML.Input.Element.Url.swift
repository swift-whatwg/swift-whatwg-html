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
extension WHATWG.HTML.Input.Element {
    public struct Url: Sendable, Hashable {
        /// A string representing a URL, or empty.
        public var value: WHATWG.HTML.Value.Attribute<String>?

        /// The id of a datalist element that provides a list of predefined values to suggest to the user.
        public var list: WHATWG.HTML.List.Attribute?

        /// The maximum string length that the user can enter.
        public var maxlength: WHATWG.HTML.Maxlength.Attribute?

        /// The minimum string length that the user can enter.
        public var minlength: WHATWG.HTML.Minlength.Attribute?

        /// A regular expression that the input's value must match to be valid.
        public var pattern: WHATWG.HTML.Pattern.Attribute?

        /// A brief hint displayed in the input field when it is empty.
        public var placeholder: WHATWG.HTML.Placeholder.Attribute?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: WHATWG.HTML.Readonly.Attribute?

        /// The visible width of the input field in characters.
        public var size: WHATWG.HTML.Size.Attribute?

        /// Enable or disable spell-checking for this element.
        public var spellcheck: WHATWG.HTML.Spellcheck.Attribute?

        /// Whether the input field is required to have a value before form submission.
        public var required: WHATWG.HTML.Required.Attribute?

        /// Creates a new URL input configuration
        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            list: WHATWG.HTML.List.Attribute? = nil,
            maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
            minlength: WHATWG.HTML.Minlength.Attribute? = nil,
            pattern: WHATWG.HTML.Pattern.Attribute? = nil,
            placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
            readonly: WHATWG.HTML.Readonly.Attribute? = nil,
            size: WHATWG.HTML.Size.Attribute? = nil,
            spellcheck: WHATWG.HTML.Spellcheck.Attribute? = nil,
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
            self.spellcheck = spellcheck
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {
    /// Creates a new url input element
    public static let url: Self = .url()

    /// Creates a new URL input element
    public static func url(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        list: WHATWG.HTML.List.Attribute? = nil,
        maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
        minlength: WHATWG.HTML.Minlength.Attribute? = nil,
        pattern: WHATWG.HTML.Pattern.Attribute? = nil,
        placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
        readonly: WHATWG.HTML.Readonly.Attribute? = nil,
        size: WHATWG.HTML.Size.Attribute? = nil,
        spellcheck: WHATWG.HTML.Spellcheck.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
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
