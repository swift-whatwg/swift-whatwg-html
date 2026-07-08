// plaintext Plain Text.swift
// WHATWG HTML Obsolete
//
// Defines the plain text element (<plaintext>)

public import WHATWG_HTML_Shared

/// Represents the obsolete `<plaintext>` element that rendered all following text as raw.
///
/// **Deprecated**: Use `<pre>` or `<code>` instead.
@available(
    *,
    deprecated,
    message: "The <plaintext> element is deprecated. Use <pre> or <code> instead."
) public struct PlainText: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

@available(
    *,
    deprecated,
    message: "The <plaintext> element is deprecated. Use <pre> or <code> instead."
)
extension PlainText {
    @inlinable public static var tag: String { "plaintext" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
