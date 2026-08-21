public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Definition {

    public struct Element: WHATWG.HTML.Element {

        public var title: WHATWG.HTML.Title.Attribute?

        public init(title: WHATWG.HTML.Title.Attribute? = nil) {
            self.title = title

        }
    }
}

extension WHATWG.HTML.Definition.Element {

    @inlinable public static var tag: String { "dfn" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
