// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

extension WHATWG_HTML {
    /// Protocol for HTML elements
    ///
    /// Conforming types represent HTML elements as defined in the WHATWG HTML Living Standard.
    /// Each element has a unique tag name, belongs to zero or more content categories, and has
    /// a content model that describes its expected contents.
    ///
    /// ## Content Categories
    ///
    /// Each element falls into zero or more categories that group elements with similar
    /// characteristics together. The broad categories are:
    /// - Metadata content
    /// - Flow content
    /// - Sectioning content
    /// - Heading content
    /// - Phrasing content
    /// - Embedded content
    /// - Interactive content
    ///
    /// ## Content Models
    ///
    /// Each element has a content model describing what children are allowed.
    /// Common content models include:
    /// - `nothing`: No content allowed (e.g., void elements)
    /// - `text`: Text content only
    /// - `flow`: Any flow content elements
    /// - `phrasing`: Inline/phrasing content only
    /// - `transparent`: Inherits from parent's content model
    ///
    /// ## Example
    ///
    /// ```swift
    /// extension WHATWG_HTML.Forms {
    ///     public struct Form: WHATWG_HTML.Element.`Protocol` {
    ///         public static var tag: String { "form" }
    ///         public static var categories: Set<Content.Category> { [.flow, .palpable] }
    ///         public static var contentModel: ContentModel { .flow }
    ///         // ...
    ///     }
    /// }
    /// ```
    ///
    /// ## Specification
    /// [WHATWG HTML Living Standard - Content Models](https://html.spec.whatwg.org/multipage/dom.html#content-models)
    public struct Element {

    }
}
