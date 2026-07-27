//
//  File.swift
//  swift-whatwg-html
//
//  Created by Coen ten Thije Boonkkamp on 05/12/2025.
//

extension WHATWG_HTML.Element.Content {
    /// A content model describes an element's expected contents.
    ///
    /// Each element defined in the HTML specification has a content model that describes
    /// what elements and text are allowed as children. An HTML element must have contents
    /// that match the requirements described in the element's content model.
    ///
    /// ## Specification
    /// [WHATWG HTML Living Standard - Content Models](https://html.spec.whatwg.org/multipage/dom.html#content-models)
    ///
    /// ## Inter-element Whitespace
    /// ASCII whitespace is always allowed between elements. Empty Text nodes and Text nodes
    /// consisting of just sequences of ASCII whitespace characters are considered inter-element
    /// whitespace and must be ignored when establishing whether an element's contents match
    /// the element's content model.
    ///
    /// Comment nodes and processing instruction nodes must also be ignored.
    public enum Model: Sendable, Equatable, Hashable, Codable {
        /// The element must contain no Text nodes (other than inter-element whitespace)
        /// and no element nodes.
        ///
        /// Most HTML elements whose content model is "nothing" are also void elements
        /// (elements that have no end tag in the HTML syntax). However, these are
        /// entirely separate concepts.
        case nothing

        /// The element may contain text content only.
        case text

        /// The element may contain elements from the specified content categories.
        case categories(Set<WHATWG_HTML.Element.Content.Category>)

        /// The element's content model is derived from its parent element.
        ///
        /// The content model of a transparent element is derived from the content model
        /// of its parent element: the required elements in the "transparent" part are
        /// the same as required in the corresponding part of the parent's content model.
        ///
        /// When a transparent element has no parent, the transparent part must be
        /// treated as accepting any flow content.
        case transparent
    }
}

extension WHATWG_HTML.Element.Content.Model {
    /// Creates a content model allowing a single category.
    @inlinable public static func category(_ category: WHATWG_HTML.Element.Content.Category) -> Self
    {
        .categories([category])
    }

    /// Creates a content model allowing flow content.
    @inlinable public static var flow: Self { .category(.flow) }

    /// Creates a content model allowing phrasing content.
    @inlinable public static var phrasing: Self { .category(.phrasing) }

    /// Creates a content model allowing metadata content.
    @inlinable public static var metadata: Self { .category(.metadata) }
}
