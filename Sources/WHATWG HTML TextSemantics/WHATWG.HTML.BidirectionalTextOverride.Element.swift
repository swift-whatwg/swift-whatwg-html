public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.BidirectionalTextOverride {

    public struct Element: WHATWG.HTML.Element {

        public let dir: WHATWG.HTML.Dir.Attribute

        public init(dir: WHATWG.HTML.Dir.Attribute) { self.dir = dir }
    }
}

extension WHATWG.HTML.BidirectionalTextOverride.Element {

    @inlinable public static var tag: String { "bdo" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
