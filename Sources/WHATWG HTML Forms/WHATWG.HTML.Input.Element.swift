public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input {

    public struct Element: WHATWG.HTML.Element {

        public var name: WHATWG.HTML.Name.Attribute?

        public var disabled: WHATWG.HTML.Disabled.Attribute?

        public var form: WHATWG.HTML.Form.Attribute.ID?

        public var type: WHATWG.HTML.Input.Element.Variant

        public init(
            name: WHATWG.HTML.Name.Attribute? = nil,
            disabled: WHATWG.HTML.Disabled.Attribute? = nil,
            form: WHATWG.HTML.Form.Attribute.ID? = nil,
            type: WHATWG.HTML.Input.Element.Variant
        ) {
            self.name = name
            self.disabled = disabled
            self.form = form
            self.type = type
        }
    }
}

extension WHATWG.HTML.Input.Element {
    @inlinable public static var tag: String { "input" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
