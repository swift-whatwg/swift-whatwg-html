public import WHATWG_HTML_Shared

extension WHATWG.HTML.HeadingGroup {

    public struct Element: WHATWG.HTML.Element {

        public init(

            )
        {

        }
    }
}

extension WHATWG.HTML.HeadingGroup.Element {

    @inlinable public static var tag: String { "hgroup" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow, .palpable]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
