// rt Ruby Text.swift
// WHATWG HTML TextSemantics
//
// Defines the ruby text element (<rt>)

public import WHATWG_HTML_Shared

extension WHATWG.HTML.RubyText {
    /// Represents the `<rt>` element that specifies the ruby text component of a ruby annotation.
    ///
    /// The `<rt>` element contains pronunciation or translation information for the base text.
    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.RubyText.Element {
    @inlinable public static var tag: String { "rt" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
