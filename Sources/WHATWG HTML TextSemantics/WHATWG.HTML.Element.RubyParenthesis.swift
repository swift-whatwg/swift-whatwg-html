// rp Ruby Fallback Parenthesis.swift
// WHATWG HTML TextSemantics
//
// Defines the ruby fallback parenthesis element (<rp>)

public import WHATWG_HTML_Shared

extension WHATWG.HTML.Element {
    /// Represents the `<rp>` element that provides fallback parentheses for ruby annotations.
    ///
    /// The `<rp>` element is used to provide parentheses around ruby text for browsers that don't support ruby annotations.
    public struct RubyParenthesis: WHATWG.HTML.Element.`Protocol` {

        public init() {}
    }
}

extension WHATWG.HTML.Element.RubyParenthesis {
    @inlinable public static var tag: String { "rp" }
    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = []
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.phrasing]))
}
