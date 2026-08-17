// strike Strike.swift
// WHATWG HTML Obsolete
//
// Defines the strike element (<strike>)

public import WHATWG_HTML_Shared

extension WHATWG_HTML.Element {
    /// Represents the obsolete `<strike>` element that renders strikethrough text.
    ///
    /// **Deprecated**: Use `<s>` for generic strikethrough or `<del>` for deleted text.
    @available(*, deprecated, message: "Use <s> for generic strikethrough or <del> for deleted text.")
    public struct Strike: WHATWG_HTML.Element.`Protocol` {

        public init() {}
    }
}

@available(*, deprecated, message: "Use <s> for generic strikethrough or <del> for deleted text.")
extension WHATWG_HTML.Element.Strike {
    @inlinable public static var tag: String { "strike" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
