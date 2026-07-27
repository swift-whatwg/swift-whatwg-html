//
//  File.swift
//  swift-whatwg-html
//
//  Created by Coen ten Thije Boonkkamp on 05/12/2025.
//

extension WHATWG_HTML.Element.Content.Category {
    /// Represents conditions under which an element belongs to a content category.
    ///
    /// Some elements only belong to certain categories when specific conditions are met,
    /// such as having certain attributes present or being in specific contexts.
    public enum Condition: Sendable, Hashable {
        /// The element is a descendant of another element type.
        /// Example: `area` is phrasing/flow content only if descendant of `map`.
        case `descendant of`(String)

        /// A specific attribute is present on the element.
        /// Example: `a` is interactive content only if `href` is present.
        case `attribute present`(String)

        /// A specific attribute has a specific value.
        /// Example: `input` is interactive content if `type` is not `hidden`.
        case `attribute not value`(attribute: String, value: String)

        /// The element is allowed in the body context.
        /// Example: `link` is flow content if allowed in body.
        case `allowed in body`

        /// The element is hierarchically correct.
        /// Example: `main` is flow content if hierarchically correct.
        case `hierarchically correct`

        /// The element has a specific descendant.
        /// Example: `hgroup` is heading content if it has a descendant h1-h6.
        case `has descendant`(Set<String>)

        /// The element's children include at least one element of a type.
        /// Example: `dl` is palpable if children include at least one name-value group.
        case `children include`(String)
    }
}
