public import WHATWG_HTML_Shared

extension WHATWG.HTML.Strike {

    @available(
        *,
        deprecated,
        message: "Use <s> for generic strikethrough or <del> for deleted text."
    )
    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

@available(*, deprecated, message: "Use <s> for generic strikethrough or <del> for deleted text.")
extension WHATWG.HTML.Strike.Element {
    @inlinable public static var tag: String { "strike" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
