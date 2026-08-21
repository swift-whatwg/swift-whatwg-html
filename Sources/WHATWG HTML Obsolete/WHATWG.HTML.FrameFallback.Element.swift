public import WHATWG_HTML_Shared

extension WHATWG.HTML.FrameFallback {

    @available(
        *,
        deprecated,
        message: "The noframes element is obsolete. Use modern layout techniques instead."
    ) public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

@available(
    *,
    deprecated,
    message: "The noframes element is obsolete. Use modern layout techniques instead."
)
extension WHATWG.HTML.FrameFallback.Element {
    @inlinable public static var tag: String { "noframes" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
