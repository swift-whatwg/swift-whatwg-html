public import WHATWG_HTML_Shared

extension WHATWG.HTML.RubyBase {

    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.RubyBase.Element {
    @inlinable public static var tag: String { "rb" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
