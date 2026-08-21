public import WHATWG_HTML_Shared

extension WHATWG.HTML.Abbreviation {

    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.Abbreviation.Element {
    @inlinable public static var tag: String { "abbr" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
