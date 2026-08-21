public import WHATWG_HTML_Shared
public import WHATWG_HTML_TableAttributes

extension WHATWG.HTML.TableColumnGroup {

    public struct Element: WHATWG.HTML.Element {

        public var span: WHATWG.HTML.Span.Attribute?

        public init(span: WHATWG.HTML.Span.Attribute? = nil) {
            self.span = span

        }
    }
}

extension WHATWG.HTML.TableColumnGroup.Element {

    @inlinable public static var tag: String { "colgroup" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
