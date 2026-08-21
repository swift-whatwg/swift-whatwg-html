public import WHATWG_HTML_Shared
public import WHATWG_HTML_TableAttributes

extension WHATWG.HTML.Frameset {

    @available(*, deprecated, message: "Use <iframe> and modern CSS layout instead.")
    public struct Element: WHATWG.HTML.Element {

        public var cols: WHATWG.HTML.Cols.Attribute?

        public var rows: WHATWG.HTML.Rows.Attribute?

        public init(
            cols: WHATWG.HTML.Cols.Attribute? = nil,
            rows: WHATWG.HTML.Rows.Attribute? = nil
        ) {
            self.cols = cols
            self.rows = rows
        }
    }
}

@available(*, deprecated, message: "Use <iframe> and modern CSS layout instead.")
extension WHATWG.HTML.Frameset.Element {
    @inlinable public static var tag: String { "frameset" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
