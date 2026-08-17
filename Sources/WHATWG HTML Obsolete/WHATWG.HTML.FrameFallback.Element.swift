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

extension WHATWG.HTML.FrameFallback {
    /// Represents the obsolete `<noframes>` element.
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
