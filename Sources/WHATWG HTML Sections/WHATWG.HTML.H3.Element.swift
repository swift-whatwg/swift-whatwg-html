public import WHATWG_HTML_Shared

extension WHATWG.HTML.H3 {

    public struct Element: WHATWG.HTML.Element {
        public init() {}
    }
}

extension WHATWG.HTML.H3.Element {
    @inlinable public static var tag: String { "h3" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .heading, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
