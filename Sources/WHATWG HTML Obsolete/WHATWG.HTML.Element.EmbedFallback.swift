// noembed Embed Fallback.swift
// WHATWG HTML Obsolete
//
// Defines the embed fallback element (<noembed>)

public import WHATWG_HTML_Shared

/// Represents the obsolete `<noembed>` element that provided fallback content for browsers without embed support.
///
/// **Deprecated**: Modern browsers support `<embed>`, making this element unnecessary.
extension WHATWG.HTML.Element {
    @available(
        *,
        deprecated,
        message: "The <noembed> element is deprecated. Modern browsers support <embed>."
    ) public struct EmbedFallback: WHATWG.HTML.Element.`Protocol` {

        public init() {}
    }
}

@available(
    *,
    deprecated,
    message: "The <noembed> element is deprecated. Modern browsers support <embed>."
)
extension WHATWG.HTML.Element.EmbedFallback {
    @inlinable public static var tag: String { "noembed" }
    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = []
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.flow]))
}
