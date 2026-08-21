public import WHATWG_HTML_Shared

extension WHATWG.HTML.KeyboardInput {

    public struct Element: WHATWG.HTML.Element {

        public init(

            )
        {

        }
    }
}

extension WHATWG.HTML.KeyboardInput.Element {

    @inlinable public static var tag: String { "kbd" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
