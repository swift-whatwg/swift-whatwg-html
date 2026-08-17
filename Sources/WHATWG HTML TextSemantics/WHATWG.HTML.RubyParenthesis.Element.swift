// rp Ruby Fallback Parenthesis.swift
// WHATWG HTML TextSemantics
//
// Defines the ruby fallback parenthesis element (<rp>)

public import WHATWG_HTML_Shared

extension WHATWG.HTML.RubyParenthesis {
    /// Represents the `<rp>` element that provides fallback parentheses for ruby annotations.
    ///
    /// The `<rp>` element is used to provide parentheses around ruby text for browsers that don't support ruby annotations.
    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.RubyParenthesis.Element {
    @inlinable public static var tag: String { "rp" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
