public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared
public import WHATWG_HTML_TableAttributes

extension WHATWG.HTML.TableColumn {

    public struct Element: WHATWG.HTML.Element {

        public var span: WHATWG.HTML.Span.Attribute?

        public var width: WHATWG.HTML.Width.Attribute?

        public init(
            span: WHATWG.HTML.Span.Attribute? = nil,
            width: WHATWG.HTML.Width.Attribute? = nil
        ) {
            self.span = span
            self.width = width
        }
    }
}

extension WHATWG.HTML.TableColumn.Element {

    @inlinable public static var tag: String { "col" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
