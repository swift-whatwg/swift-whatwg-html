public import WHATWG_HTML_Shared

extension WHATWG.HTML.Article {

    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.Article.Element {
    @inlinable public static var tag: String { "article" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .sectioning, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
