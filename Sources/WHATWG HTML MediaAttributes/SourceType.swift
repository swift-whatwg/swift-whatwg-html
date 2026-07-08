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
public import WHATWG_HTML_Shared

/// Represents the HTML type attribute for the `<source>` element.
///
/// The `type` attribute specifies the MIME type of the media resource,
/// helping browsers understand how to process it. This is essential for
/// `<picture>`, `<audio>`, and `<video>` elements to choose the appropriate source.
///
/// ## Academic Correctness
///
/// Per WHATWG HTML specification, the type attribute must be a valid MIME type
/// as defined in RFC 2045. This implementation uses `RFC_2045.ContentType` to
/// ensure academic correctness.
///
/// ## Usage Notes
///
/// - Valid on the `<source>` element within `<picture>`, `<audio>`, or `<video>`
/// - Should contain a valid MIME type string per RFC 2045
/// - May include codecs parameter for media types (e.g., `video/mp4; codecs="avc1.42E01E"`)
/// - Helps browsers skip sources they cannot decode without downloading
///
/// ## Examples
///
/// ```swift
/// // Video source with MIME type
/// HTML.source.src("video.mp4").type(SourceType(contentType: .videoMP4))
///
/// // Audio source
/// HTML.source.src("audio.mp3").type(SourceType(contentType: .audioMPEG))
///
/// // Image source for picture element
/// HTML.source.srcset("image.webp").type(SourceType(contentType: .imageWEBP))
///
/// // Using string literal
/// HTML.source.type("video/mp4")
/// ```
@dynamicMemberLookup public struct SourceType: WHATWG_HTML.StringAttribute {

    /// The MIME type value as a string
    public var rawValue: String

    /// Initialize with a string value
    public init(value: String) { self.rawValue = value }

    /// Initialize with an RFC 2045 Content-Type
    public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
}

extension SourceType {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }
}

// MARK: - Common Media MIME Types

extension SourceType {
    /// video/mp4
    public static let videoMP4 = SourceType(contentType: .videoMP4)

    /// video/webm
    public static let videoWebM = SourceType(contentType: .videoWebM)

    /// video/ogg
    public static let videoOgg = SourceType(contentType: .videoOgg)

    /// audio/mpeg (MP3)
    public static let audioMPEG = SourceType(contentType: .audioMPEG)

    /// audio/ogg
    public static let audioOgg = SourceType(contentType: .audioOgg)

    /// audio/wav
    public static let audioWav = SourceType(contentType: .audioWav)

    /// audio/webm
    public static let audioWebM = SourceType(contentType: .audioWebM)

    /// image/webp
    public static let imageWEBP = SourceType(contentType: .imageWEBP)

    /// image/avif
    public static let imageAVIF = SourceType(contentType: .imageAVIF)
}

// MARK: - Link/Non-Media MIME Types

extension SourceType {
    /// text/css
    public static let css = SourceType(contentType: .textCSS)

    /// text/javascript
    public static let javascript = SourceType(contentType: .textJavaScript)

    /// image/svg+xml
    public static let svg = SourceType(contentType: .imageSVG)

    /// image/png
    public static let png = SourceType(contentType: .imagePNG)

    /// application/manifest+json
    public static let manifest = SourceType(contentType: .applicationManifestJSON)

    /// application/rss+xml
    public static let rss = SourceType(contentType: .applicationRSSXML)

    /// application/atom+xml
    public static let atom = SourceType(contentType: .applicationAtomXML)

    /// application/json
    public static let json = SourceType(contentType: .applicationJSON)
}
