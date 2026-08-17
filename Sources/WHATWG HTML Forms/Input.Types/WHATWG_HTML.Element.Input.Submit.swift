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

/// `<input type="submit">` elements are rendered as buttons. When the click event occurs (typically because the user clicked the button),
/// the user agent attempts to submit the form to the server.
extension WHATWG_HTML.Element.Input {
    public struct Submit: Sendable, Hashable {
        /// A string which is displayed as the button's label. The value provides the accessible description for the button.
        /// If you don't specify a value, the button will have a default label, chosen by the user agent.
        public var value: Attribute.Value<String>?

        /// A string indicating the URL to which to submit the data. This takes precedence over the action attribute on the `<form>` element.
        public var formaction: Attribute.FormAction?

        /// A string that identifies the encoding method to use when submitting the form data to the server.
        public var formenctype: Attribute.FormEncType?

        /// A string indicating the HTTP method to use when submitting the form's data.
        public var formmethod: Attribute.FormMethod?

        /// A Boolean attribute which, if present, specifies that the form should not be validated before submission to the server.
        public var formnovalidate: Attribute.FormNovalidate?

        /// A string which specifies a name or keyword that indicates where to display the response received after submitting the form.
        public var formtarget: Attribute.FormTarget?

        public var required: Attribute.Required?

        /// Creates a new submit input configuration
        public init(
            value: Attribute.Value<String>? = nil,
            formaction: Attribute.FormAction? = nil,
            formenctype: Attribute.FormEncType? = nil,
            formmethod: Attribute.FormMethod? = nil,
            formnovalidate: Attribute.FormNovalidate? = nil,
            formtarget: Attribute.FormTarget? = nil,
            required: Attribute.Required? = nil
        ) {
            self.value = value
            self.formaction = formaction
            self.formenctype = formenctype
            self.formmethod = formmethod
            self.formnovalidate = formnovalidate
            self.formtarget = formtarget
            self.required = required
        }
    }
}

extension WHATWG_HTML.Element.Input {
    /// Creates a new submit input element
    public static let submit: Self = .submit()

    /// Creates a new submit input element
    public static func submit(
        name: Attribute.Name? = nil,
        value: Attribute.Value<String>? = nil,
        formaction: Attribute.FormAction? = nil,
        formenctype: Attribute.FormEncType? = nil,
        formmethod: Attribute.FormMethod? = nil,
        formnovalidate: Attribute.FormNovalidate? = nil,
        formtarget: Attribute.FormTarget? = nil,
        disabled: Attribute.Disabled? = nil,
        form: WHATWG_HTML.Attribute.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .submit(
                .init(
                    value: value,
                    formaction: formaction,
                    formenctype: formenctype,
                    formmethod: formmethod,
                    formnovalidate: formnovalidate,
                    formtarget: formtarget
                )
            )
        )
    }
}
