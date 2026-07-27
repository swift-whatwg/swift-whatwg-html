// menu Menu.swift
// WHATWG HTML Interactive
//
// Defines the menu element (<menu>)

public import WHATWG_HTML_Shared

/// Represents the `<menu>` element that defines a list of commands or options.
///
/// The `<menu>` element can be used as a semantic alternative to `<ul>` for toolbars and command lists.
public struct Menu: WHATWG_HTML.Element.`Protocol` {
    public init() {}
}

extension Menu {
    @inlinable public static var tag: String { "menu" }

    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [.flow]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
