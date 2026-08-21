public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Details {

    public struct Element: WHATWG.HTML.Element {

        public var open: WHATWG.HTML.Open.Attribute?

        public var name: WHATWG.HTML.Name.Attribute?

        public init(
            open: WHATWG.HTML.Open.Attribute? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil
        ) {
            self.open = open
            self.name = name

        }
    }
}

extension WHATWG.HTML.Details.Element {

    @inlinable public static var tag: String { "details" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .interactive, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
