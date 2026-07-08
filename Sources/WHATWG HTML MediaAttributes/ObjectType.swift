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

/// Represents the HTML type attribute for the `<object>` element.
///
/// The `type` attribute specifies the MIME type of the resource represented by the object.
/// This attribute is essential for the browser to determine how to process the resource.
/// At least one of `data` or `type` attributes must be defined for the object element.
///
/// ## Academic Correctness
///
/// Per WHATWG HTML specification, the type attribute must be a valid MIME type string
/// as defined in RFC 2045. This implementation uses `RFC_2045.ContentType` to ensure
/// academic correctness and type safety.
///
/// ## Usage Notes
///
/// - Specifies the MIME type of the resource specified by the `data` attribute
/// - Common types include: "application/pdf", "video/mp4", "audio/mpeg", etc.
/// - Helps the browser understand how to process and display the content
/// - Must be a valid MIME type string per RFC 2045
///
/// ## Examples
///
/// ```swift
/// // PDF object
/// HTML.object.data("document.pdf").type(ObjectType(contentType: .applicationPDF))
///
/// // Video object
/// HTML.object.data("video.mp4").type(ObjectType(contentType: .videoMP4))
///
/// // Using string literal (parsed as MIME type)
/// HTML.object.type("image/jpeg")
/// ```
@dynamicMemberLookup public struct ObjectType: WHATWG_HTML.StringAttribute {

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the type attribute
    public init(value: String) { self.rawValue = value }

    /// Initialize with an RFC 2045 Content-Type
    public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
}

extension ObjectType {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "type" }
}

// MARK: - Common MIME Types

extension ObjectType {
    /// application/pdf
    public static let pdf = ObjectType(contentType: .applicationPDF)

    /// video/mp4
    public static let mp4 = ObjectType(contentType: .videoMP4)

    /// audio/mpeg (MP3)
    public static let mp3 = ObjectType(contentType: .audioMPEG)

    /// image/jpeg
    public static let jpeg = ObjectType(contentType: .imageJPEG)

    /// image/png
    public static let png = ObjectType(contentType: .imagePNG)

    /// text/html
    public static let html = ObjectType(contentType: .textHTML)
}
