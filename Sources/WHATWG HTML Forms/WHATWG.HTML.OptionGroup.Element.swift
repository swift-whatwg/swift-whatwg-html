public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.OptionGroup {

    public struct Element: WHATWG.HTML.Element {

        public var disabled: WHATWG.HTML.Disabled.Attribute?

        public var label: WHATWG.HTML.Label.Attribute?

        public init(
            disabled: WHATWG.HTML.Disabled.Attribute? = nil,
            label: WHATWG.HTML.Label.Attribute? = nil
        ) {
            self.disabled = disabled
            self.label = label

        }
    }
}

extension WHATWG.HTML.OptionGroup.Element {

    @inlinable public static var tag: String { "optgroup" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(
        model: .categories([.`optgroup element inner content`])
    )
}
