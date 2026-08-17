// rb Ruby Base.swift
// WHATWG HTML TextSemantics
//
// Defines the ruby base text component (<rb>)

public import WHATWG_HTML_Shared

extension WHATWG.HTML.Element {
    /// Represents the `<rb>` element that delimits the base text component of a ruby annotation.
    ///
    /// Note: The `<rb>` element is not part of the WHATWG HTML Living Standard
    /// but is included for compatibility with older ruby annotation implementations.
    public struct RubyBase: WHATWG.HTML.Element.`Protocol` {

        public init() {}
    }
}

extension WHATWG.HTML.Element.RubyBase {
    @inlinable public static var tag: String { "rb" }
    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = []
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.flow]))
}
