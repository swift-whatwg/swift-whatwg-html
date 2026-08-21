public import WHATWG_HTML_Shared

extension WHATWG.HTML.Code {

    public struct Element: WHATWG.HTML.Element {

        public init(

            )
        {

        }
    }
}

extension WHATWG.HTML.Code.Element {

    @inlinable public static var tag: String { "code" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
