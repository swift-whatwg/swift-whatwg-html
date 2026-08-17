// tt Teletype Text.swift
// WHATWG HTML Obsolete
//
// Defines the teletype text element (<tt>)

public import WHATWG_HTML_Shared

extension WHATWG.HTML.TeletypeText {
    /// Represents the `<tt>` element for teletype text (obsolete).
    ///
    /// The `<tt>` element is obsolete in HTML5. Use `<code>`, `<kbd>`, `<samp>`, or CSS instead.
    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.TeletypeText.Element {
    @inlinable public static var tag: String { "tt" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
