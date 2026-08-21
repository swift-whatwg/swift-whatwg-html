public import WHATWG_HTML_Shared

extension WHATWG.HTML.Noscript {

    public struct Element: WHATWG.HTML.Element {

        public init(

            )
        {

        }
    }
}

extension WHATWG.HTML.Noscript.Element {

    @inlinable public static var tag: String { "noscript" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .metadata, .flow, .phrasing,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .transparent)
}
