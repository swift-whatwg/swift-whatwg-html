public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Submit: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var formaction: WHATWG.HTML.FormAction.Attribute?

        public var formenctype: WHATWG.HTML.FormEncType.Attribute?

        public var formmethod: WHATWG.HTML.FormMethod.Attribute?

        public var formnovalidate: WHATWG.HTML.FormNovalidate.Attribute?

        public var formtarget: WHATWG.HTML.FormTarget.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

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

    public static let submit: Self = .submit()

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
