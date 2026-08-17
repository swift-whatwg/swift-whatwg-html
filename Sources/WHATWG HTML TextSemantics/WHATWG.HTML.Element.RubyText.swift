// rt Ruby Text.swift
// WHATWG HTML TextSemantics
//
// Defines the ruby text element (<rt>)

public import WHATWG_HTML_Shared

extension WHATWG.HTML.Element {
    /// Represents the `<rt>` element that specifies the ruby text component of a ruby annotation.
    ///
    /// The `<rt>` element contains pronunciation or translation information for the base text.
    public struct RubyText: WHATWG.HTML.Element.`Protocol` {

        public init() {}
    }
}

extension WHATWG.HTML.Element.RubyText {
    @inlinable public static var tag: String { "rt" }
    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = []
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.phrasing]))
}
