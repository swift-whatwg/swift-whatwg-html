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
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Style {
    /// Represents an HTML style element (`<style>`), which contains style information for a document or part of a document.
    ///
    /// The `Style` struct provides a type-safe way to embed CSS styling directly within an HTML document.
    ///
    /// ## Example
    ///
    /// ```swift
    /// style {
    ///     """
    ///     p {
    ///         color: #26b72b;
    ///     }
    ///     code {
    ///         font-weight: bold;
    ///     }
    ///     """
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - The `<style>` element should be included inside the `<head>` of the document.
    /// - In general, it's better to put styles in external stylesheets and apply them using `<link>` elements.
    /// - When using multiple `<style>` and `<link>` elements, they are applied in the order they appear in the document.
    /// - You can use the `media` attribute to apply styles conditionally based on media queries.
    ///
    public struct Element: WHATWG.HTML.Element {

        /// Defines which media the style should be applied to. Its value is a media query, which defaults to "all" if the attribute is missing.
        public var media: WHATWG.HTML.Media.Attribute?

        /// Explicitly indicates that certain operations should be blocked on the fetching of critical subresources.
        public var blocking: WHATWG.HTML.Blocking.Attribute?

        /// A cryptographic nonce (number used once) used to allow inline styles in a style-src Content-Security-Policy.
        public var nonce: WHATWG.HTML.Nonce.Attribute?

        /// Specifies alternative style sheet sets.
        public var title: WHATWG.HTML.Title.Attribute?

        /// Creates a new Style element with the specified attributes.
        ///
        /// - Parameters:
        ///   - media: Defines which media the style should be applied to
        ///   - blocking: Indicates operations to be blocked on fetching critical subresources
        ///   - nonce: A cryptographic nonce for Content-Security-Policy
        ///   - title: Specifies alternative style sheet sets
        public init(
            media: WHATWG.HTML.Media.Attribute? = nil,
            blocking: WHATWG.HTML.Blocking.Attribute? = nil,
            nonce: WHATWG.HTML.Nonce.Attribute? = nil,
            title: WHATWG.HTML.Title.Attribute? = nil
        ) {
            self.media = media
            self.blocking = blocking
            self.nonce = nonce
            self.title = title
        }
    }
}

extension WHATWG.HTML.Style.Element {
    /// The HTML tag name
    @inlinable public static var tag: String { "style" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.metadata]
    public static let content: WHATWG.HTML.Content = .init(model: .text)
}
