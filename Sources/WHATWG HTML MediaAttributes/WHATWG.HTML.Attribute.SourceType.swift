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

extension WHATWG.HTML.Attribute {
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
    @dynamicMemberLookup public struct SourceType: WHATWG.HTML.StringAttribute {

        /// The MIME type value as a string
        public var rawValue: String

        /// Initialize with a string value
        public init(value: String) { self.rawValue = value }

        /// Initialize with an RFC 2045 Content-Type
        public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
    }
}

extension WHATWG.HTML.Attribute.SourceType {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }
}

// MARK: - Common Media MIME Types

extension WHATWG.HTML.Attribute.SourceType {
    /// video/mp4
    public static let videoMP4 = WHATWG.HTML.Attribute.SourceType(contentType: .videoMP4)

    /// video/webm
    public static let videoWebM = WHATWG.HTML.Attribute.SourceType(contentType: .videoWebM)

    /// video/ogg
    public static let videoOgg = WHATWG.HTML.Attribute.SourceType(contentType: .videoOgg)

    /// audio/mpeg (MP3)
    public static let audioMPEG = WHATWG.HTML.Attribute.SourceType(contentType: .audioMPEG)

    /// audio/ogg
    public static let audioOgg = WHATWG.HTML.Attribute.SourceType(contentType: .audioOgg)

    /// audio/wav
    public static let audioWav = WHATWG.HTML.Attribute.SourceType(contentType: .audioWav)

    /// audio/webm
    public static let audioWebM = WHATWG.HTML.Attribute.SourceType(contentType: .audioWebM)

    /// image/webp
    public static let imageWEBP = WHATWG.HTML.Attribute.SourceType(contentType: .imageWEBP)

    /// image/avif
    public static let imageAVIF = WHATWG.HTML.Attribute.SourceType(contentType: .imageAVIF)
}

// MARK: - Link/Non-Media MIME Types

extension WHATWG.HTML.Attribute.SourceType {
    /// text/css
    public static let css = WHATWG.HTML.Attribute.SourceType(contentType: .textCSS)

    /// text/javascript
    public static let javascript = WHATWG.HTML.Attribute.SourceType(contentType: .textJavaScript)

    /// image/svg+xml
    public static let svg = WHATWG.HTML.Attribute.SourceType(contentType: .imageSVG)

    /// image/png
    public static let png = WHATWG.HTML.Attribute.SourceType(contentType: .imagePNG)

    /// application/manifest+json
    public static let manifest = WHATWG.HTML.Attribute.SourceType(
        contentType: .applicationManifestJSON
    )

    /// application/rss+xml
    public static let rss = WHATWG.HTML.Attribute.SourceType(contentType: .applicationRSSXML)

    /// application/atom+xml
    public static let atom = WHATWG.HTML.Attribute.SourceType(contentType: .applicationAtomXML)

    /// application/json
    public static let json = WHATWG.HTML.Attribute.SourceType(contentType: .applicationJSON)
}
