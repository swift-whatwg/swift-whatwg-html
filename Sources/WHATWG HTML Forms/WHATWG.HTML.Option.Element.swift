public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Option {

    public struct Element: WHATWG.HTML.Element {

        public var disabled: WHATWG.HTML.Disabled.Attribute?

        public var label: WHATWG.HTML.Label.Attribute?

        public var selected: WHATWG.HTML.Selected.Attribute?

        public var value: WHATWG.HTML.Value.Attribute<String>

        public init(
            disabled: WHATWG.HTML.Disabled.Attribute? = nil,
            label: WHATWG.HTML.Label.Attribute? = nil,
            selected: WHATWG.HTML.Selected.Attribute? = nil,
            value: WHATWG.HTML.Value.Attribute<String>
        ) {
            self.disabled = disabled
            self.label = label
            self.selected = selected
            self.value = value
        }
    }
}

extension WHATWG.HTML.Option.Element {

    @inlinable public static var tag: String { "option" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(
        model: .categories([.`option element inner content`])
    )
}
