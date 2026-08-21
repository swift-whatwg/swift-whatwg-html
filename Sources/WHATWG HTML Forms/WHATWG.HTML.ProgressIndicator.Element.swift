public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.ProgressIndicator {

    public struct Element: WHATWG.HTML.Element {

        public var max: WHATWG.HTML.Max.Attribute?

        public var value: WHATWG.HTML.Value.Attribute<Float>?

        public init(
            max: WHATWG.HTML.Max.Attribute? = nil,
            value: WHATWG.HTML.Value.Attribute<Float>? = nil
        ) {
            self.max = max
            self.value = value

        }
    }
}

extension WHATWG.HTML.ProgressIndicator.Element {

    @inlinable public static var tag: String { "progress" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
