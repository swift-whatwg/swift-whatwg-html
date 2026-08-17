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

public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Link {
    /// Represents an HTML link element (`<link>`), which specifies relationships between the current
    /// document and external resources such as stylesheets, icons, and other linked resources.
    ///
    /// The `Link` struct provides a type-safe way to define external resource links for an HTML document.
    /// These links are commonly used for stylesheets, icons, preloading resources, and establishing
    /// other relationships with external files.
    ///
    /// ## Examples
    ///
    /// ```swift
    /// // Link to stylesheet
    /// link(href: "styles.css", rel: "stylesheet")
    ///
    /// // Link to favicon
    /// link(href: "favicon.ico", rel: "icon")
    ///
    /// // Preload a font
    /// link(href: "font.woff2", rel: "preload", as: .font, crossorigin: .anonymous)
    ///
    /// // Define alternative stylesheet
    /// link(href: "dark.css", rel: "alternate stylesheet", title: "Dark Theme")
    /// ```
    ///
    /// ## Usage Notes
    ///
    /// - Link elements typically appear in the `<head>` section of an HTML document
    /// - The `rel` attribute is required and defines the relationship to the linked resource
    /// - The `href` attribute is usually required and specifies the URL of the resource
    /// - Various other attributes control caching, prioritization, and resource loading behavior
    ///
    /// - Note: When rendered, this generates an HTML `<link>` element with the specified attributes.
    ///   It is a void element and does not have a closing tag.
    public struct Element: WHATWG.HTML.Element {

        /// The type of resource being loaded (for preload/modulepreload).
        public var `as`: WHATWG.HTML.As.Attribute?

        /// Indicates which operations should be blocked on fetching the resource.
        ///
        /// Can only be used with rel="stylesheet" or rel="expect".
        public var blocking: WHATWG.HTML.Blocking.Attribute?

        /// Indicates whether CORS must be used when fetching the resource.
        public var crossorigin: WHATWG.HTML.Crossorigin.Attribute?

        /// For stylesheets, indicates whether the stylesheet should be loaded and applied.
        public var disabled: WHATWG.HTML.Disabled.Attribute?

        /// Provides a hint of the relative priority for fetching this resource.
        public var fetchpriority: WHATWG.HTML.FetchPriority.Attribute?

        /// Specifies the URL of the linked resource.
        public var href: WHATWG.HTML.Href.Attribute?

        /// Indicates the language of the linked resource.
        public var hreflang: WHATWG.HTML.Hreflang.Attribute?

        /// For preloaded images, has similar syntax and semantics as the sizes attribute.
        public var imagesizes: WHATWG.HTML.ImageSizes.Attribute?

        /// For preloaded images, has similar syntax and semantics as the srcset attribute.
        public var imagesrcset: WHATWG.HTML.ImageSrcSet.Attribute?

        /// Contains inline metadata for verifying the integrity of the resource.
        ///
        /// A base64-encoded cryptographic hash of the resource for subresource integrity.
        public var integrity: WHATWG.HTML.Integrity.Attribute?

        /// Specifies the media that the linked resource applies to.
        ///
        /// Used primarily for stylesheets to target specific media types/queries.
        public var media: WHATWG.HTML.Media.Attribute?

        /// Controls which referrer is sent when fetching the resource.
        public var referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute?

        /// Defines the relationship of the linked document to the current document.
        ///
        /// This is a required attribute and must be a space-separated list of link types.
        /// Common values include:
        /// - stylesheet: Linked resource is a stylesheet
        /// - icon: Linked resource is an icon for the document
        /// - preload: Resource should be preloaded
        /// - alternate: Alternative version of the document
        /// - manifest: Web app manifest
        public var rel: WHATWG.HTML.Rel.Attribute?

        /// Defines the sizes of the icons for visual media contained in the resource.
        ///
        /// Must be present only if the rel contains "icon" or similar types.
        /// Format is either "any" for vector formats, or space-separated pairs like "16x16 32x32".
        public var sizes: WHATWG.HTML.Sizes.Attribute?

        /// Special semantics for stylesheet links to define default or alternate stylesheets.
        public var title: WHATWG.HTML.Title.Attribute?

        /// Defines the MIME type of the linked resource.
        ///
        /// Examples include "text/css" for stylesheets or "image/x-icon" for icons.
        public var type: WHATWG.HTML.Link.`Type`.Attribute?

        /// Creates a new Link element with the specified attributes.
        ///
        /// - Parameters:
        ///   - `as`: The type of content being loaded (for preload/modulepreload)
        ///   - blocking: Operations to block during resource loading (for stylesheets/expect)
        ///   - crossorigin: Whether CORS must be used when fetching the resource
        ///   - disabled: Whether the stylesheet should be loaded and applied
        ///   - fetchpriority: Relative priority hint for fetching this resource
        ///   - href: URL of the linked resource
        ///   - hreflang: Language of the linked resource
        ///   - imagesizes: For preloaded images, similar to sizes attribute
        ///   - imagesrcset: For preloaded images, similar to srcset attribute
        ///   - integrity: Cryptographic hash for subresource integrity
        ///   - media: Media type/query that the resource applies to
        ///   - referrerpolicy: Which referrer to send when fetching the resource
        ///   - rel: Relationship of the linked resource to the document (required)
        ///   - sizes: Sizes of icons for visual media
        ///   - title: For stylesheets, defines default or alternate stylesheets
        ///   - type: MIME type of the linked resource
        public init(
            `as`: WHATWG.HTML.As.Attribute? = nil,
            blocking: WHATWG.HTML.Blocking.Attribute? = nil,
            crossorigin: WHATWG.HTML.Crossorigin.Attribute? = nil,
            disabled: WHATWG.HTML.Disabled.Attribute? = nil,
            fetchpriority: WHATWG.HTML.FetchPriority.Attribute? = nil,
            href: WHATWG.HTML.Href.Attribute? = nil,
            hreflang: WHATWG.HTML.Hreflang.Attribute? = nil,
            imagesizes: WHATWG.HTML.ImageSizes.Attribute? = nil,
            imagesrcset: WHATWG.HTML.ImageSrcSet.Attribute? = nil,
            integrity: WHATWG.HTML.Integrity.Attribute? = nil,
            media: WHATWG.HTML.Media.Attribute? = nil,
            referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute? = nil,
            rel: WHATWG.HTML.Rel.Attribute? = nil,
            sizes: WHATWG.HTML.Sizes.Attribute? = nil,
            title: WHATWG.HTML.Title.Attribute? = nil,
            type: WHATWG.HTML.Link.`Type`.Attribute? = nil
        ) {
            self.`as` = `as`
            self.blocking = blocking
            self.crossorigin = crossorigin
            self.disabled = disabled
            self.fetchpriority = fetchpriority
            self.href = href
            self.hreflang = hreflang
            self.imagesizes = imagesizes
            self.imagesrcset = imagesrcset
            self.integrity = integrity
            self.media = media
            self.referrerpolicy = referrerpolicy
            self.rel = rel
            self.sizes = sizes
            self.title = title
            self.type = type
        }
    }
}

extension WHATWG.HTML.Link.Element {
    @inlinable public static var tag: String { "link" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.metadata]
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
