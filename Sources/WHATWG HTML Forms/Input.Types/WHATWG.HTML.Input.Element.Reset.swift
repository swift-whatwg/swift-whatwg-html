public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Reset: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var required: WHATWG.HTML.Required.Attribute?

        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
        ) {
            self.value = value
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let reset: Self = .reset()

    public static func reset(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(name: name, disabled: disabled, form: form, type: .reset(.init(value: value)))
    }
}
