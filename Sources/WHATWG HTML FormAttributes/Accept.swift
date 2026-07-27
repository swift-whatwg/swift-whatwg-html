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

/// An attribute that specifies which file types are accepted for file upload.
///
/// The `accept` attribute is used with `<input type="file">` elements to specify which file types the server accepts.
/// It takes as its value a comma-separated list of unique file type specifiers.
///
/// ## Valid File Type Specifiers
///
/// - A valid case-insensitive filename extension starting with a period (e.g., `.jpg`, `.pdf`, `.doc`)
/// - A valid MIME type string with no extensions (e.g., `image/jpeg`, `application/pdf`)
/// - `audio/*` - Any audio file
/// - `video/*` - Any video file
/// - `image/*` - Any image file
///
/// ## Academic Correctness
///
/// Per WHATWG HTML specification, MIME types must be valid per RFC 2045. This implementation
/// uses `RFC_2045.ContentType` for MIME type specifiers to ensure academic correctness.
///
/// ## Usage Notes
///
/// - This attribute is only valid for `<input>` elements with `type="file"`
/// - It provides hints to browsers but doesn't validate the file types; server-side validation is still necessary
/// - Multiple file types can be specified by separating them with commas
/// - The native file picker will typically filter files based on the specified types
///
/// ## Examples
///
/// ```swift
/// // Accept only images
/// HTML.input.type("file").accept(.images)
///
/// // Accept specific image formats
/// HTML.input.type("file").accept([.jpg, .png, .gif])
///
/// // Accept PDFs using RFC 2045 MIME type
/// HTML.input.type("file").accept(.pdf)
///
/// // Accept custom MIME type
/// HTML.input.type("file").accept(Accept.FileType(contentType: .applicationPDF))
/// ```
public struct Accept: WHATWG_HTML.Attribute {
    /// The accepted file types
    private let fileTypes: [FileType]

    /// Initialize with a single file type
    public init(_ fileType: FileType) { self.fileTypes = [fileType] }

    /// Initialize with multiple file types
    public init(_ fileTypes: [FileType]) { self.fileTypes = fileTypes }

    /// Initialize with multiple file types as variadic parameters
    public init(_ fileTypes: FileType...) { self.fileTypes = fileTypes }

    /// Initialize with a raw string value
    public init(rawValue: String) { self.fileTypes = [FileType(rawValue)] }
}

extension Accept {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "accept" }
}

extension Accept: ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) { self = .init(rawValue: value) }
}

extension Accept: CustomStringConvertible {
    /// Returns the string representation of the accept value
    public var description: String {
        return self.fileTypes.map(\.description).joined(separator: ", ")
    }
}

extension Accept {
    /// Accept any image file
    @inlinable public static var images: Self { "image/*" }

    /// Accept any video file
    @inlinable public static var videos: Self { "video/*" }

    /// Accept any audio file
    @inlinable public static var audio: Self { "audio/*" }
}

extension Accept {
    /// Represents a file type specifier for the Accept attribute
    ///
    /// Can represent either:
    /// - A MIME type (RFC 2045 ContentType)
    /// - A file extension (.jpg, .pdf, etc.)
    /// - A wildcard (image/*, video/*, etc.)
    public struct FileType: Sendable, Hashable, CustomStringConvertible, ExpressibleByStringLiteral
    {
        /// The string value for the file type
        public var value: String

        /// Initialize with a custom value
        public init(_ value: String) { self.value = value }

        /// Initialize with an RFC 2045 MIME type
        public init(contentType: RFC_2045.ContentType) { self.value = contentType.headerValue }

        public init(stringLiteral value: StringLiteralType) { self = .init(value) }
    }
}

extension Accept.FileType {
    /// String representation of the file type
    public var description: String { return value }
}

// MARK: - Wildcard Categories

extension Accept.FileType {
    /// Any image file (image/*)
    public static let image: Self = .init("image/*")

    /// Any audio file (audio/*)
    public static let audio: Self = .init("audio/*")

    /// Any video file (video/*)
    public static let video: Self = .init("video/*")
}

// MARK: - Common Image Formats

extension Accept.FileType {
    /// JPEG image - RFC 2045 MIME type + file extension
    public static let jpg: Self = .init(contentType: .imageJPEG)

    /// JPEG image (alias)
    public static let jpeg: Self = .jpg

    /// PNG image - RFC 2045 MIME type + file extension
    public static let png: Self = .init(contentType: .imagePNG)

    /// GIF image - RFC 2045 MIME type + file extension
    public static let gif: Self = .init(contentType: .imageGIF)

    /// SVG image
    public static let svg: Self = .init(contentType: .imageSVG)

    /// WebP image
    public static let webp: Self = .init(contentType: .imageWEBP)

    /// AVIF image
    public static let avif: Self = .init(contentType: .imageAVIF)
}

// MARK: - Common Document Formats

extension Accept.FileType {
    /// PDF document - RFC 2045 MIME type
    public static let pdf: Self = .init(contentType: .applicationPDF)

    /// Microsoft Word document (.doc)
    public static let doc: Self = .extension("doc")

    /// Microsoft Word document (.docx)
    public static let docx: Self = .extension("docx")

    /// Microsoft Excel spreadsheet (.xls)
    public static let xls: Self = .extension("xls")

    /// Microsoft Excel spreadsheet (.xlsx)
    public static let xlsx: Self = .extension("xlsx")

    /// Microsoft PowerPoint presentation (.ppt)
    public static let ppt: Self = .extension("ppt")

    /// Microsoft PowerPoint presentation (.pptx)
    public static let pptx: Self = .extension("pptx")

    /// Text file (.txt)
    public static let txt: Self = .extension("txt")

    /// Rich Text Format (.rtf)
    public static let rtf: Self = .extension("rtf")

    /// CSV file (.csv)
    public static let csv: Self = .extension("csv")
}

// MARK: - Common Audio Formats

extension Accept.FileType {
    /// MP3 audio
    public static let mp3: Self = .init(contentType: .audioMPEG)

    /// WAV audio
    public static let wav: Self = .init(contentType: .audioWav)

    /// OGG audio
    public static let ogg: Self = .init(contentType: .audioOgg)

    /// AAC audio (.aac)
    public static let aac: Self = .extension("aac")

    /// FLAC audio (.flac)
    public static let flac: Self = .extension("flac")
}

// MARK: - Common Video Formats

extension Accept.FileType {
    /// MP4 video
    public static let mp4: Self = .init(contentType: .videoMP4)

    /// WebM video
    public static let webm: Self = .init(contentType: .videoWebM)

    /// OGG video
    public static let oggVideo: Self = .init(contentType: .videoOgg)

    /// AVI video (.avi)
    public static let avi: Self = .extension("avi")

    /// QuickTime video (.mov)
    public static let mov: Self = .extension("mov")

    /// Matroska video (.mkv)
    public static let mkv: Self = .extension("mkv")
}

// MARK: - Common Archive Formats

extension Accept.FileType {
    /// ZIP archive (.zip)
    public static let zip: Self = .extension("zip")

    /// RAR archive (.rar)
    public static let rar: Self = .extension("rar")

    /// TAR archive (.tar)
    public static let tar: Self = .extension("tar")

    /// GZIP archive (.gz)
    public static let gz: Self = .extension("gz")
}

// MARK: - Microsoft Office MIME Types

extension Accept.FileType {
    /// Microsoft Word document (application/msword)
    public static let msword: Self = .init("application/msword")

    /// Microsoft Word OpenXML document
    public static let wordOpenXml: Self = .init(
        "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
    )

    /// Microsoft Excel OpenXML spreadsheet
    public static let excelOpenXml: Self = .init(
        "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
    )

    /// Microsoft PowerPoint OpenXML presentation
    public static let powerPointOpenXml: Self = .init(
        "application/vnd.openxmlformats-officedocument.presentationml.presentation"
    )
}

// MARK: - Factory Methods

extension Accept.FileType {
    /// Creates a FileType from an extension (automatically adds the period if needed)
    public static func `extension`(_ extension: String) -> Self {
        let ext = `extension`.hasPrefix(".") ? `extension` : ".\(`extension`)"
        return .init(ext)
    }

    /// Creates a FileType from an extension (automatically adds the period if needed)
    public static func ext(_ extension: String) -> Self { .extension(`extension`) }

    /// Creates a FileType from a MIME type
    public static func mime(_ type: String) -> Self { return .init(type) }
}
