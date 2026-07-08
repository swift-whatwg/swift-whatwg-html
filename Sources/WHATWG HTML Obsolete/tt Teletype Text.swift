// tt Teletype Text.swift
// WHATWG HTML Obsolete
//
// Defines the teletype text element (<tt>)

public import WHATWG_HTML_Shared

/// Represents the `<tt>` element for teletype text (obsolete).
///
/// The `<tt>` element is obsolete in HTML5. Use `<code>`, `<kbd>`, `<samp>`, or CSS instead.
public struct TeletypeText: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

extension TeletypeText {
    @inlinable public static var tag: String { "tt" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
