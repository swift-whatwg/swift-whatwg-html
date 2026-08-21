public import WHATWG_HTML_Shared

extension WHATWG.HTML.ContentDivision {

    public struct Element: WHATWG.HTML.Element {

        public init(

            )
        {

        }
    }
}

extension WHATWG.HTML.ContentDivision.Element {

    @inlinable public static var tag: String { "div" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow, .palpable]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
