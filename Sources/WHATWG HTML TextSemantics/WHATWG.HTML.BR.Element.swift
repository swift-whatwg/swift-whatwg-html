public import WHATWG_HTML_Shared

extension WHATWG.HTML.BR {

    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.BR.Element {

    @inlinable public static var tag: String { "br" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow, .phrasing]
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
