public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.HtmlRoot {

    public struct Element: WHATWG.HTML.Element {

        public var xmlns: WHATWG.HTML.Xmlns.Attribute?

        public init(xmlns: WHATWG.HTML.Xmlns.Attribute? = nil) {
            self.xmlns = xmlns

        }
    }
}

extension WHATWG.HTML.HtmlRoot.Element {

    @inlinable public static var tag: String { "html" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
