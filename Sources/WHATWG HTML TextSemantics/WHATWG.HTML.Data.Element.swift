public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Data {

    public struct Element: WHATWG.HTML.Element {

        public var value: WHATWG.HTML.Value.Attribute<String>

        public init(value: WHATWG.HTML.Value.Attribute<String>) {
            self.value = value

        }
    }
}

extension WHATWG.HTML.Data.Element {

    @inlinable public static var tag: String { "data" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
