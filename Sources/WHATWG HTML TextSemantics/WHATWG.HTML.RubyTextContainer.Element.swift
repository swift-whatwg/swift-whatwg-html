// rtc Ruby Text Container.swift
// WHATWG HTML TextSemantics
//
// Defines the ruby text container element (<rtc>)

public import WHATWG_HTML_Shared

extension WHATWG.HTML.RubyTextContainer {
    /// Represents the `<rtc>` element that contains semantic annotations for ruby base text.
    ///
    /// Note: The `<rtc>` element is not part of the WHATWG HTML Living Standard
    /// but is included for compatibility with complex ruby annotation implementations.
    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.RubyTextContainer.Element {
    @inlinable public static var tag: String { "rtc" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
