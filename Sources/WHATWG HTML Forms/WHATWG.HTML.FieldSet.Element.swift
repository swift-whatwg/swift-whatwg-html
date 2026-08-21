public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.FieldSet {

    public struct Element: WHATWG.HTML.Element {

        public var disabled: WHATWG.HTML.Disabled.Attribute?

        public var form: WHATWG.HTML.Form.Attribute.ID?

        public var name: WHATWG.HTML.Name.Attribute?

        public init(
            disabled: WHATWG.HTML.Disabled.Attribute? = nil,
            form: WHATWG.HTML.Form.Attribute.ID? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil
        ) {
            self.disabled = disabled
            self.form = form
            self.name = name
        }
    }
}

extension WHATWG.HTML.FieldSet.Element {

    @inlinable public static var tag: String { "fieldset" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow, .palpable]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
