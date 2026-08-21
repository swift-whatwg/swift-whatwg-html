public import WHATWG_HTML_Shared
public import WHATWG_HTML_TableAttributes

extension WHATWG.HTML.TableHeader {

    public struct Element: WHATWG.HTML.Element {

        public var abbr: WHATWG.HTML.Abbr.Attribute?

        public var colspan: WHATWG.HTML.ColSpan.Attribute?

        public var headers: WHATWG.HTML.Headers.Attribute?

        public var rowspan: WHATWG.HTML.RowSpan.Attribute?

        public var scope: WHATWG.HTML.Scope.Attribute?

        public init(
            abbr: WHATWG.HTML.Abbr.Attribute? = nil,
            colspan: WHATWG.HTML.ColSpan.Attribute? = nil,
            headers: WHATWG.HTML.Headers.Attribute? = nil,
            rowspan: WHATWG.HTML.RowSpan.Attribute? = nil,
            scope: WHATWG.HTML.Scope.Attribute? = nil
        ) {
            self.abbr = abbr
            self.colspan = colspan
            self.headers = headers
            self.rowspan = rowspan
            self.scope = scope

        }
    }
}

extension WHATWG.HTML.TableHeader.Element {

    @inlinable public static var tag: String { "th" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
