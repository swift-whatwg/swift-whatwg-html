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

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.HtmlRoot {
    /// Represents the HTML root element (`<html>`), which serves as the top-level element of an HTML document.
    ///
    /// The `HtmlRoot` struct provides a type-safe way to create HTML documents with proper structure.
    ///
    /// ## Example
    ///
    /// ```swift
    /// html {
    ///     head {
    ///         title { "Page Title" }
    ///     }
    ///     body {
    ///         h1 { "Hello World" }
    ///         p { "Welcome to my website" }
    ///     }
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Always specify the `lang` attribute to improve accessibility
    /// - Include both `<head>` and `<body>` elements as children
    /// - The `<html>` element should be the root of your document, preceded only by the DOCTYPE declaration
    ///
    public struct Element: WHATWG.HTML.Element {
        /// The XML namespace of the document (required for XHTML)
        public var xmlns: WHATWG.HTML.Xmlns.Attribute?

        /// Creates a new HTML root element with the specified attributes.
        ///
        /// - Parameters:
        ///   - xmlns: The XML namespace (required for XHTML, optional for HTML), typically head and body elements
        public init(xmlns: WHATWG.HTML.Xmlns.Attribute? = nil) {
            self.xmlns = xmlns

        }
    }
}

extension WHATWG.HTML.HtmlRoot.Element {
    /// The HTML tag name
    @inlinable public static var tag: String { "html" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
