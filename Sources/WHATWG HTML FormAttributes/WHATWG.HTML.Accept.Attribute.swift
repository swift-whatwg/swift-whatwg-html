public import RFC_2045
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Accept {

    public struct Attribute: WHATWG.HTML.Attribute {

        private let fileTypes: [FileType]

        public init(_ fileType: FileType) { self.fileTypes = [fileType] }

        public init(_ fileTypes: [FileType]) { self.fileTypes = fileTypes }

        public init(_ fileTypes: FileType...) { self.fileTypes = fileTypes }

        public init(rawValue: String) { self.fileTypes = [FileType(rawValue)] }
    }
}

extension WHATWG.HTML.Accept.Attribute {

    @inlinable public static var attribute: String { "accept" }
}

extension WHATWG.HTML.Accept.Attribute: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) { self = .init(rawValue: value) }
}

extension WHATWG.HTML.Accept.Attribute: CustomStringConvertible {

    public var description: String {
        return self.fileTypes.map(\.description).joined(separator: ", ")
    }
}

extension WHATWG.HTML.Accept.Attribute {

    @inlinable public static var images: Self { "image/*" }

    @inlinable public static var videos: Self { "video/*" }

    @inlinable public static var audio: Self { "audio/*" }
}

extension WHATWG.HTML.Accept.Attribute {

    public struct FileType: Sendable, Hashable, CustomStringConvertible, ExpressibleByStringLiteral
    {

        public var value: String

        public init(_ value: String) { self.value = value }

        public init(contentType: RFC_2045.ContentType) { self.value = contentType.headerValue }

        public init(stringLiteral value: String) { self = .init(value) }
    }
}

extension WHATWG.HTML.Accept.Attribute.FileType {

    public var description: String { return value }
}

extension WHATWG.HTML.Accept.Attribute.FileType {

    public static let image: Self = .init("image/*")

    public static let audio: Self = .init("audio/*")

    public static let video: Self = .init("video/*")
}

extension WHATWG.HTML.Accept.Attribute.FileType {

    public static let jpg: Self = .init(contentType: .imageJPEG)

    public static let jpeg: Self = .jpg

    public static let png: Self = .init(contentType: .imagePNG)

    public static let gif: Self = .init(contentType: .imageGIF)

    public static let svg: Self = .init(contentType: .imageSVG)

    public static let webp: Self = .init(contentType: .imageWEBP)

    public static let avif: Self = .init(contentType: .imageAVIF)
}

extension WHATWG.HTML.Accept.Attribute.FileType {

    public static let pdf: Self = .init(contentType: .applicationPDF)

    public static let doc: Self = .extension("doc")

    public static let docx: Self = .extension("docx")

    public static let xls: Self = .extension("xls")

    public static let xlsx: Self = .extension("xlsx")

    public static let ppt: Self = .extension("ppt")

    public static let pptx: Self = .extension("pptx")

    public static let txt: Self = .extension("txt")

    public static let rtf: Self = .extension("rtf")

    public static let csv: Self = .extension("csv")
}

extension WHATWG.HTML.Accept.Attribute.FileType {

    public static let mp3: Self = .init(contentType: .audioMPEG)

    public static let wav: Self = .init(contentType: .audioWav)

    public static let ogg: Self = .init(contentType: .audioOgg)

    public static let aac: Self = .extension("aac")

    public static let flac: Self = .extension("flac")
}

extension WHATWG.HTML.Accept.Attribute.FileType {

    public static let mp4: Self = .init(contentType: .videoMP4)

    public static let webm: Self = .init(contentType: .videoWebM)

    public static let oggVideo: Self = .init(contentType: .videoOgg)

    public static let avi: Self = .extension("avi")

    public static let mov: Self = .extension("mov")

    public static let mkv: Self = .extension("mkv")
}

extension WHATWG.HTML.Accept.Attribute.FileType {

    public static let zip: Self = .extension("zip")

    public static let rar: Self = .extension("rar")

    public static let tar: Self = .extension("tar")

    public static let gz: Self = .extension("gz")
}

extension WHATWG.HTML.Accept.Attribute.FileType {

    public static let msword: Self = .init("application/msword")

    public static let wordOpenXml: Self = .init(
        "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
    )

    public static let excelOpenXml: Self = .init(
        "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
    )

    public static let powerPointOpenXml: Self = .init(
        "application/vnd.openxmlformats-officedocument.presentationml.presentation"
    )
}

extension WHATWG.HTML.Accept.Attribute.FileType {

    public static func `extension`(_ extension: String) -> Self {
        let ext = `extension`.hasPrefix(".") ? `extension` : ".\(`extension`)"
        return .init(ext)
    }

    public static func ext(_ extension: String) -> Self { .extension(`extension`) }

    public static func mime(_ type: String) -> Self { return .init(type) }
}
