public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Select {

    public struct Element: WHATWG.HTML.Element {

        public var multiple: WHATWG.HTML.Multiple.Attribute?

        public var name: WHATWG.HTML.Name.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public var size: WHATWG.HTML.Size.Attribute?

        public var disabled: WHATWG.HTML.Disabled.Attribute?

        public var form: WHATWG.HTML.Form.Attribute.ID?

        public var autofocus: WHATWG.HTML.Autofocus.Attribute?

        public init(
            multiple: WHATWG.HTML.Multiple.Attribute? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil,
            size: WHATWG.HTML.Size.Attribute? = nil,
            disabled: WHATWG.HTML.Disabled.Attribute? = nil,
            form: WHATWG.HTML.Form.Attribute.ID? = nil,
            autofocus: WHATWG.HTML.Autofocus.Attribute? = nil
        ) {
            self.multiple = multiple
            self.name = name
            self.required = required
            self.size = size
            self.disabled = disabled
            self.form = form
            self.autofocus = autofocus
        }
    }
}

extension WHATWG.HTML.Select.Element {

    @inlinable public static var tag: String { "select" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .interactive, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(
        model: .categories([.`select element inner content`])
    )
}
