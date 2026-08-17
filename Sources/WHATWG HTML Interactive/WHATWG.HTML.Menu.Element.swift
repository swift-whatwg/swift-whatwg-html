// menu Menu.swift
// WHATWG HTML Interactive
//
// Defines the menu element (<menu>)

public import WHATWG_HTML_Shared

extension WHATWG.HTML.Menu {
    /// Represents the `<menu>` element that defines a list of commands or options.
    ///
    /// The `<menu>` element can be used as a semantic alternative to `<ul>` for toolbars and command lists.
    public struct Element: WHATWG.HTML.Element {
        public init() {}
    }
}

extension WHATWG.HTML.Menu.Element {
    @inlinable public static var tag: String { "menu" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
