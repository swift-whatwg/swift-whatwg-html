public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Checkbox: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var checked: WHATWG.HTML.Checked.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            checked: WHATWG.HTML.Checked.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
        ) {
            self.value = value
            self.checked = checked
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let checkbox: Self = .checkbox()

    public static func checkbox(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        checked: WHATWG.HTML.Checked.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .checkbox(.init(value: value, checked: checked, required: required))
        )
    }
}
