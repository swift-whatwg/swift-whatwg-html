public import WHATWG_HTML_Shared

extension WHATWG.HTML.Title {

    public struct Element: WHATWG.HTML.Element {

        public init(

            )
        {

        }
    }
}

extension WHATWG.HTML.Title.Element {

    @inlinable public static var tag: String { "title" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.metadata]
    public static let content: WHATWG.HTML.Content = .init(model: .text)
}
