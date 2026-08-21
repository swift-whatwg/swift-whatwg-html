public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Del {

    public struct Element: WHATWG.HTML.Element {

        public var cite: WHATWG.HTML.Cite.Attribute?

        public var datetime: WHATWG.HTML.DateTime.Attribute?

        public init(
            cite: WHATWG.HTML.Cite.Attribute? = nil,
            datetime: WHATWG.HTML.DateTime.Attribute? = nil
        ) {
            self.cite = cite
            self.datetime = datetime
        }
    }
}

extension WHATWG.HTML.Del.Element {

    @inlinable public static var tag: String { "del" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .transparent)
}
