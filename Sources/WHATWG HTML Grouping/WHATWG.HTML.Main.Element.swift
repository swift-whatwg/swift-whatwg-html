public import WHATWG_HTML_Shared

extension WHATWG.HTML.Main {

    public struct Element: WHATWG.HTML.Element {
        public init() {}
    }
}

extension WHATWG.HTML.Main.Element {

    @inlinable public static var tag: String { "main" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow, .palpable]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
