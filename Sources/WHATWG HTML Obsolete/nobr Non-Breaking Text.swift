// nobr Non-Breaking Text.swift
// WHATWG HTML Obsolete
//
// Defines the non-breaking text element (<nobr>)

public import WHATWG_HTML_Shared

/// Represents the obsolete `<nobr>` element that prevents text from wrapping.
///
/// **Deprecated**: Use CSS property `white-space: nowrap` instead.
@available(*, deprecated, message: "Use CSS property 'white-space: nowrap' instead.")
public struct NoBr: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

@available(*, deprecated, message: "Use CSS property 'white-space: nowrap' instead.")
extension NoBr {
    @inlinable public static var tag: String { "nobr" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
