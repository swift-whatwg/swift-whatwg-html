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

/// `<input type="submit">` elements are rendered as buttons. When the click event occurs (typically because the user clicked the button),
/// the user agent attempts to submit the form to the server.
extension WHATWG.HTML.Input.Element {
    public struct Submit: Sendable, Hashable {
        /// A string which is displayed as the button's label. The value provides the accessible description for the button.
        /// If you don't specify a value, the button will have a default label, chosen by the user agent.
        public var value: WHATWG.HTML.Value.Attribute<String>?

        /// A string indicating the URL to which to submit the data. This takes precedence over the action attribute on the `<form>` element.
        public var formaction: WHATWG.HTML.FormAction.Attribute?

        /// A string that identifies the encoding method to use when submitting the form data to the server.
        public var formenctype: WHATWG.HTML.FormEncType.Attribute?

        /// A string indicating the HTTP method to use when submitting the form's data.
        public var formmethod: WHATWG.HTML.FormMethod.Attribute?

        /// A Boolean attribute which, if present, specifies that the form should not be validated before submission to the server.
        public var formnovalidate: WHATWG.HTML.FormNovalidate.Attribute?

        /// A string which specifies a name or keyword that indicates where to display the response received after submitting the form.
        public var formtarget: WHATWG.HTML.FormTarget.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        /// Creates a new submit input configuration
        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            formaction: WHATWG.HTML.FormAction.Attribute? = nil,
            formenctype: WHATWG.HTML.FormEncType.Attribute? = nil,
            formmethod: WHATWG.HTML.FormMethod.Attribute? = nil,
            formnovalidate: WHATWG.HTML.FormNovalidate.Attribute? = nil,
            formtarget: WHATWG.HTML.FormTarget.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
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

extension WHATWG.HTML.Input.Element {
    /// Creates a new submit input element
    public static let submit: Self = .submit()

    /// Creates a new submit input element
    public static func submit(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        formaction: WHATWG.HTML.FormAction.Attribute? = nil,
        formenctype: WHATWG.HTML.FormEncType.Attribute? = nil,
        formmethod: WHATWG.HTML.FormMethod.Attribute? = nil,
        formnovalidate: WHATWG.HTML.FormNovalidate.Attribute? = nil,
        formtarget: WHATWG.HTML.FormTarget.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
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
