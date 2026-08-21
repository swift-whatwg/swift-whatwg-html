public import WHATWG_HTML_Shared

extension WHATWG.HTML.RubyText {

    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.RubyText.Element {
    @inlinable public static var tag: String { "rt" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
