public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.BlockQuote {

    public struct Element: WHATWG.HTML.Element {

        public var cite: WHATWG.HTML.Cite.Attribute?

        public init(cite: WHATWG.HTML.Cite.Attribute? = nil) { self.cite = cite }
    }
}

extension WHATWG.HTML.BlockQuote.Element {

    @inlinable public static var tag: String { "blockquote" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow, .palpable]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
