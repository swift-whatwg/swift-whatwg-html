public import WHATWG_HTML_Shared

extension WHATWG.HTML.Caption {
    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.Caption.Element {

    @inlinable public static var tag: String { "caption" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
