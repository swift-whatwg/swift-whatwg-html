public import WHATWG_HTML_Shared

extension WHATWG.HTML.TableRow {

    public struct Element: WHATWG.HTML.Element {

        public init(

            )
        {

        }
    }
}

extension WHATWG.HTML.TableRow.Element {

    @inlinable public static var tag: String { "tr" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
