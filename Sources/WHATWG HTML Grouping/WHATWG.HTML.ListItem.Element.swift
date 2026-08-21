public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.ListItem {

    public struct Element: WHATWG.HTML.Element {

        public var value: WHATWG.HTML.Value.Attribute<Int>?

        public init(value: WHATWG.HTML.Value.Attribute<Int>? = nil) {
            self.value = value

        }
    }
}

extension WHATWG.HTML.ListItem.Element {

    @inlinable public static var tag: String { "li" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
