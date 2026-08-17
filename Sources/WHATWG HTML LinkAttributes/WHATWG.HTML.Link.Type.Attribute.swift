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

public import RFC_2045
import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Link.`Type` {
    /// Represents the HTML type attribute for the `<link>` element.
    ///
    /// The `type` attribute specifies the MIME type of the linked resource, helping browsers
    /// understand how to process it.
    ///
    /// ## Academic Correctness
    ///
    /// Per WHATWG HTML specification, the type attribute must be a valid MIME type
    /// as defined in RFC 2045. This implementation uses `RFC_2045.ContentType` to
    /// ensure academic correctness.
    ///
    /// ## Usage Notes
    ///
    /// - This attribute is valid on the `<link>` element
    /// - Should contain a valid MIME type string per RFC 2045
    /// - For stylesheets, modern browsers will correctly interpret CSS with or without this attribute
    /// - Helps browsers understand resource types for preloading and processing
    ///
    /// ## Examples
    ///
    /// ```swift
    /// // CSS Stylesheet
    /// HTML.link.rel("stylesheet").type(HTML.Link.`Type`.Attribute(contentType: .textCSS)).href("styles.css")
    ///
    /// // Favicon
    /// HTML.link.rel("icon").type(HTML.Link.`Type`.Attribute(contentType: .imageXIcon)).href("favicon.ico")
    ///
    /// // Web App Manifest
    /// HTML.link.rel("manifest").type(HTML.Link.`Type`.Attribute(contentType: .applicationManifestJSON)).href("manifest.json")
    ///
    /// // Using string literal
    /// HTML.link.type("text/css")
    /// ```
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        /// The attribute value
        public let rawValue: String

        /// Initialize with a value for the type attribute
        public init(value: String) { self.rawValue = value }

        /// Initialize with an RFC 2045 Content-Type
        public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
    }
}

extension WHATWG.HTML.Link.`Type`.Attribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }
}

// MARK: - Common Link MIME Types

extension WHATWG.HTML.Link.`Type`.Attribute {
    /// text/css - CSS stylesheet
    public static let css = WHATWG.HTML.Link.`Type`.Attribute(contentType: .textCSS)

    /// text/javascript - JavaScript
    public static let javascript = WHATWG.HTML.Link.`Type`.Attribute(contentType: .textJavaScript)

    /// image/x-icon - Favicon
    public static let icon = WHATWG.HTML.Link.`Type`.Attribute(contentType: .imageXIcon)

    /// image/svg+xml - SVG image
    public static let svg = WHATWG.HTML.Link.`Type`.Attribute(contentType: .imageSVG)

    /// image/png - PNG image
    public static let png = WHATWG.HTML.Link.`Type`.Attribute(contentType: .imagePNG)

    /// application/manifest+json - Web app manifest
    public static let manifest = WHATWG.HTML.Link.`Type`.Attribute(
        contentType: .applicationManifestJSON
    )

    /// application/rss+xml - RSS feed
    public static let rss = WHATWG.HTML.Link.`Type`.Attribute(contentType: .applicationRSSXML)

    /// application/atom+xml - Atom feed
    public static let atom = WHATWG.HTML.Link.`Type`.Attribute(contentType: .applicationAtomXML)

    /// application/json - JSON data
    public static let json = WHATWG.HTML.Link.`Type`.Attribute(contentType: .applicationJSON)
}
