public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Label {

    public struct Element: WHATWG.HTML.Element {

        public var `for`: WHATWG.HTML.For.Attribute?

        public init(for: WHATWG.HTML.For.Attribute? = nil) {
            self.for = `for`

        }
    }
}

extension WHATWG.HTML.Label.Element {
    @inlinable public static var tag: String { "label" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .interactive, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
