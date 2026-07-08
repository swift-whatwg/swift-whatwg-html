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
/// HTML.link.rel("stylesheet").type(LinkType(contentType: .textCSS)).href("styles.css")
///
/// // Favicon
/// HTML.link.rel("icon").type(LinkType(contentType: .imageXIcon)).href("favicon.ico")
///
/// // Web App Manifest
/// HTML.link.rel("manifest").type(LinkType(contentType: .applicationManifestJSON)).href("manifest.json")
///
/// // Using string literal
/// HTML.link.type("text/css")
/// ```
@dynamicMemberLookup public struct LinkType: WHATWG_HTML.StringAttribute {
    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the type attribute
    public init(value: String) { self.rawValue = value }

    /// Initialize with an RFC 2045 Content-Type
    public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
}

extension LinkType {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }
}

// MARK: - Common Link MIME Types

extension LinkType {
    /// text/css - CSS stylesheet
    public static let css = LinkType(contentType: .textCSS)

    /// text/javascript - JavaScript
    public static let javascript = LinkType(contentType: .textJavaScript)

    /// image/x-icon - Favicon
    public static let icon = LinkType(contentType: .imageXIcon)

    /// image/svg+xml - SVG image
    public static let svg = LinkType(contentType: .imageSVG)

    /// image/png - PNG image
    public static let png = LinkType(contentType: .imagePNG)

    /// application/manifest+json - Web app manifest
    public static let manifest = LinkType(contentType: .applicationManifestJSON)

    /// application/rss+xml - RSS feed
    public static let rss = LinkType(contentType: .applicationRSSXML)

    /// application/atom+xml - Atom feed
    public static let atom = LinkType(contentType: .applicationAtomXML)

    /// application/json - JSON data
    public static let json = LinkType(contentType: .applicationJSON)
}
