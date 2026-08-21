public import WHATWG_HTML_Shared

extension WHATWG.HTML.UnorderedList {
    public struct Element: WHATWG.HTML.Element {

        public init(

            )
        {

        }
    }
}

extension WHATWG.HTML.UnorderedList.Element {

    @inlinable public static var tag: String { "ul" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
