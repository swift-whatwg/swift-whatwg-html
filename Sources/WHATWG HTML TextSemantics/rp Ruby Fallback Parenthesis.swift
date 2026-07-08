// rp Ruby Fallback Parenthesis.swift
// WHATWG HTML TextSemantics
//
// Defines the ruby fallback parenthesis element (<rp>)

public import WHATWG_HTML_Shared

/// Represents the `<rp>` element that provides fallback parentheses for ruby annotations.
///
/// The `<rp>` element is used to provide parentheses around ruby text for browsers that don't support ruby annotations.
public struct RubyParenthesis: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

extension RubyParenthesis {
    @inlinable public static var tag: String { "rp" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}
