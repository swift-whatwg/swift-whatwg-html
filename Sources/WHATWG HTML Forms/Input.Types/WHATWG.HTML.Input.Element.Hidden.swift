public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Hidden: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public init(value: WHATWG.HTML.Value.Attribute<String>? = nil) { self.value = value }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let hidden: Self = .hidden()

    public static func hidden(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(name: name, disabled: disabled, form: form, type: .hidden(.init(value: value)))
    }
}
