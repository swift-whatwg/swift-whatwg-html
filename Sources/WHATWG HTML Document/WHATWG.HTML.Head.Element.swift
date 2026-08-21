public import WHATWG_HTML_Shared

extension WHATWG.HTML.Head {

    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.Head.Element {

    @inlinable public static var tag: String { "head" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.metadata]))
}
