public import WHATWG_HTML_FormAttributes
import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Map {

    public struct Element: WHATWG.HTML.Element {

        public var name: WHATWG.HTML.Name.Attribute?

        public init(name: WHATWG.HTML.Name.Attribute? = nil) {
            self.name = name

        }
    }
}

extension WHATWG.HTML.Map.Element {

    @inlinable public static var tag: String { "map" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .transparent)
}
