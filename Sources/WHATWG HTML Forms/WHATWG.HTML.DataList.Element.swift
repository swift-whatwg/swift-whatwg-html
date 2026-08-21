public import WHATWG_HTML_Shared

extension WHATWG.HTML.DataList {

    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.DataList.Element {

    @inlinable public static var tag: String { "datalist" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow, .phrasing]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
