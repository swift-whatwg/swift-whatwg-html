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

/// `<input type="search">` elements are text fields designed for the user to enter search queries into.
/// These are functionally identical to text inputs, but may be styled differently by the user agent.
///
/// Some browsers show a cross icon that can be clicked on to remove the search term instantly, and modern
/// browsers tend to automatically store search terms previously entered across domains, which then come up
/// as autocomplete options when subsequent searches are performed.
extension WHATWG.HTML.Input.Element {
    public struct Search: Sendable, Hashable {
        /// The value attribute contains a string representing the value contained in the search field.
        /// If no validation constraints are in place for the input, the value can be any text string
        /// or an empty string ("").
        public var value: WHATWG.HTML.Value.Attribute<String>?

        /// The list attribute is the id of a <datalist> element located in the same document.
        /// The <datalist> provides a list of predefined values to suggest to the user for this input.
        public var list: WHATWG.HTML.List.Attribute?

        /// The maximum string length (measured in UTF-16 code units) that the user can enter into
        /// the search field. This must be an integer value of 0 or higher. If no maxlength is specified,
        /// or an invalid value is specified, the search field has no maximum length.
        public var maxlength: WHATWG.HTML.Maxlength.Attribute?

        /// The minimum string length (measured in UTF-16 code units) that the user can enter into
        /// the search field. This must be a non-negative integer value smaller than or equal to the
        /// value specified by maxlength.
        public var minlength: WHATWG.HTML.Minlength.Attribute?

        /// The pattern attribute is a regular expression that the input's value must match for the value
        /// to pass constraint validation. It must be a valid JavaScript regular expression.
        public var pattern: WHATWG.HTML.Pattern.Attribute?

        /// The placeholder attribute is a string that provides a brief hint to the user as to what kind
        /// of information is expected in the field. It should be a word or short phrase that demonstrates
        /// the expected type of data, rather than an explanatory message.
        public var placeholder: WHATWG.HTML.Placeholder.Attribute?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: WHATWG.HTML.Readonly.Attribute?

        /// The size attribute is a numeric value indicating how many characters wide the input field should be.
        /// The value must be a number greater than zero, and the default value is 20.
        public var size: WHATWG.HTML.Size.Attribute?

        /// The spellcheck attribute is used to indicate whether to enable spell-checking for an element.
        /// The permitted values are true (enable spell-checking), false (disable spell-checking),
        /// and an empty string or no value (follow the element's default behavior).
        public var spellcheck: WHATWG.HTML.Spellcheck.Attribute?

        /// Indicates if the field is required to be filled in before the form can be submitted.
        public var required: WHATWG.HTML.Required.Attribute?

        /// Creates a new search input configuration
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
    /// Creates a new search input element
    public static let search: Self = .search()

    /// Creates a new search input element
    public static func search(
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
            type: .search(
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
