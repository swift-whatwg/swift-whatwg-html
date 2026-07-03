//
//  File.swift
//  swift-whatwg-html
//
//  Created by Coen ten Thije Boonkkamp on 05/12/2025.
//

extension WHATWG_HTML.Element {
    public protocol `Protocol`: Sendable, Hashable {
        /// The HTML tag name for this element.
        ///
        /// For example, `"div"`, `"form"`, `"input"`, etc.
        static var tag: String { get }

        /// Unconditional content categories this element belongs to.
        ///
        /// These are the categories the element always belongs to, regardless of
        /// attributes or context. Some elements have additional conditional
        /// category memberships based on attributes (e.g., `<a>` is interactive
        /// only if `href` is present).
        static var categories: Set<WHATWG_HTML.Element.Content.Category> { get }

        //        /// Resolved content categories for this instance.
        //        ///
        //        /// Returns the unconditional categories plus any conditional categories
        //        /// that apply based on this instance's attributes and context.
        //        var categories: Set<WHATWG_HTML.Element.Content.Category> { get }

        /// The content for this element.
        ///
        /// Describes what types of children are allowed within this element.
        static var content: WHATWG_HTML.Element.Content { get }
    }
}
