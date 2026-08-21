public import WHATWG_HTML_Shared

extension WHATWG.HTML.RubyParenthesis {

    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.RubyParenthesis.Element {
    @inlinable public static var tag: String { "rp" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
