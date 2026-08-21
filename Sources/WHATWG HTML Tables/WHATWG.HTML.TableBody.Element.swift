public import WHATWG_HTML_Shared

extension WHATWG.HTML.TableBody {

    public struct Element: WHATWG.HTML.Element {

        public init(

            )
        {

        }
    }
}

extension WHATWG.HTML.TableBody.Element {

    @inlinable public static var tag: String { "tbody" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
