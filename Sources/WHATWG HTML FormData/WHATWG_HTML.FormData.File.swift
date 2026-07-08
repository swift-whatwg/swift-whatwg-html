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

public import WHATWG_HTML_Forms
import WHATWG_HTML_Shared

extension Form.Data {
    /// Represents a file value in form data.
    ///
    /// File values are used when submitting forms with file input controls (`<input type="file">`).
    /// Each file has a name (filename), a MIME type, and binary body content.
    ///
    /// ## Specification
    ///
    /// Per the WHATWG HTML specification, file values in form data represent uploaded files
    /// with their associated metadata.
    ///
    /// [File uploads](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#concept-fe-value)
    ///
    /// ## Example
    ///
    /// ```swift
    /// let imageFile = WHATWG_HTML.Form.Data.File(
    ///     name: "profile.jpg",
    ///     type: "image/jpeg",
    ///     body: jpegData
    /// )
    ///
    /// let pdfFile = WHATWG_HTML.Form.Data.File(
    ///     name: "document.pdf",
    ///     type: "application/pdf",
    ///     body: pdfData
    /// )
    /// ```
    public struct File: Sendable, Hashable {
        /// The filename of this file.
        ///
        /// This is typically the original filename from the user's filesystem, though it may
        /// be sanitized or modified by the user agent.
        public let name: String

        /// The MIME type of this file.
        ///
        /// Common examples include:
        /// - `"image/jpeg"` for JPEG images
        /// - `"image/png"` for PNG images
        /// - `"application/pdf"` for PDF documents
        /// - `"text/plain"` for plain text files
        /// - `"application/octet-stream"` for unknown binary files
        public let type: String

        /// The binary content of this file.
        ///
        /// Contains the complete file data as uploaded by the user.
        public let body: [UInt8]

        /// Creates a file value with the specified properties.
        ///
        /// - Parameters:
        ///   - name: The filename
        ///   - type: The MIME type of the file
        ///   - body: The binary content of the file
        @inlinable public init(name: String, type: String, body: [UInt8]) {
            self.name = name
            self.type = type
            self.body = body
        }
    }
}

extension Form.Data.File {
    /// The size of the file in bytes.
    @inlinable public var size: Int { body.count }

    /// Returns whether this file appears to be empty.
    @inlinable public var isEmpty: Bool { body.isEmpty }
}

// MARK: - CustomStringConvertible

extension Form.Data.File: CustomStringConvertible {
    public var description: String { "<File: \(name), type: \(type), size: \(size) bytes>" }
}

// MARK: - Common MIME Types

extension Form.Data.File {
    /// Common MIME types for file uploads.
    public enum MIMEType {
    }
}

extension Form.Data.File.MIMEType {
    /// Plain text files
    public static let plainText = "text/plain"

    /// HTML files
    public static let html = "text/html"

    /// CSS files
    public static let css = "text/css"

    /// JavaScript files
    public static let javascript = "text/javascript"

    /// JSON files
    public static let json = "application/json"

    /// XML files
    public static let xml = "application/xml"

    /// PDF documents
    public static let pdf = "application/pdf"

    /// ZIP archives
    public static let zip = "application/zip"

    /// JPEG images
    public static let jpeg = "image/jpeg"

    /// PNG images
    public static let png = "image/png"

    /// GIF images
    public static let gif = "image/gif"

    /// WebP images
    public static let webp = "image/webp"

    /// SVG images
    public static let svg = "image/svg+xml"

    /// MP3 audio
    public static let mp3 = "audio/mpeg"

    /// MP4 video
    public static let mp4 = "video/mp4"

    /// WebM video
    public static let webm = "video/webm"

    /// Unknown or binary files
    public static let octetStream = "application/octet-stream"
}
