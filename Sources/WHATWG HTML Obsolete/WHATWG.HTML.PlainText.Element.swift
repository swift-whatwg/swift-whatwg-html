// noembed Embed Fallback.swift
// WHATWG HTML Obsolete
//
// Defines the embed fallback element (<noembed>)

public import WHATWG_HTML_Shared

/// Represents the obsolete `<noembed>` element that provided fallback content for browsers without embed support.
///
/// **Deprecated**: Modern browsers support `<embed>`, making this element unnecessary.
extension WHATWG.HTML.EmbedFallback {

public import WHATWG_HTML_Shared

extension WHATWG.HTML.PlainText {
    /// Represents the obsolete `<plaintext>` element.
    @available(
        *,
        deprecated,
        message: "The plaintext element is obsolete. Use the pre element or the text/plain MIME type instead."
    ) public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

@available(
    *,
    deprecated,
    message: "The plaintext element is obsolete. Use the pre element or the text/plain MIME type instead."
)
extension WHATWG.HTML.PlainText.Element {
    @inlinable public static var tag: String { "plaintext" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
