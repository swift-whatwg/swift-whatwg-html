public import WHATWG_HTML_Shared

extension WHATWG.HTML.PlainText {

    @available(
        *,
        deprecated,
        message: "The plaintext element is obsolete. Use pre or the text/plain MIME type instead."
    ) public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

@available(
    *,
    deprecated,
    message: "The plaintext element is obsolete. Use pre or the text/plain MIME type instead."
)
extension WHATWG.HTML.PlainText.Element {
    @inlinable public static var tag: String { "plaintext" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
