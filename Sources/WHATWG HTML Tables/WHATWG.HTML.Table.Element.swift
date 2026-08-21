public import WHATWG_HTML_Shared

extension WHATWG.HTML.Table {

    public struct Element: WHATWG.HTML.Element {

        public init(

            )
        {

        }
    }
}

extension WHATWG.HTML.Table.Element {

    @inlinable public static var tag: String { "table" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow, .palpable]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
