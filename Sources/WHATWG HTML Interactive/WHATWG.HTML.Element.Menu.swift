// menu Menu.swift
// WHATWG HTML Interactive
//
// Defines the menu element (<menu>)

public import WHATWG_HTML_Shared

extension WHATWG.HTML.Element {
    /// Represents the `<menu>` element that defines a list of commands or options.
    ///
    /// The `<menu>` element can be used as a semantic alternative to `<ul>` for toolbars and command lists.
    public struct Menu: WHATWG.HTML.Element.`Protocol` {
        public init() {}
    }
}

extension WHATWG.HTML.Element.Menu {
    @inlinable public static var tag: String { "menu" }

    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = [.flow]
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.flow]))
}
