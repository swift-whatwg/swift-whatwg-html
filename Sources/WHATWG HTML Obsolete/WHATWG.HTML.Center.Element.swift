// center Centered Text.swift
// WHATWG HTML Obsolete
//
// Defines the center element (<center>)

public import WHATWG_HTML_Shared

extension WHATWG.HTML.Center {
    /// Represents the `<center>` element for centering text horizontally (obsolete).
    ///
    /// The `<center>` element is deprecated in HTML5. Use CSS `text-align: center` instead.
    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.Center.Element {
    @inlinable public static var tag: String { "center" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
