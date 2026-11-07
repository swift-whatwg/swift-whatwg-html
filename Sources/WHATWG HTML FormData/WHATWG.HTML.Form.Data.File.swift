public import WHATWG_HTML_Shared

extension WHATWG.HTML.Form.Data {

    public struct File: Sendable, Hashable {

        public let name: String

        public let type: String

        public let body: [UInt8]

        @inlinable public init(name: String, type: String, body: [UInt8]) {
            self.name = name
            self.type = type
            self.body = body
        }
    }
}

extension WHATWG.HTML.Form.Data.File {

    @inlinable public var size: Int { body.count }

    @inlinable public var isEmpty: Bool { body.isEmpty }
}

extension WHATWG.HTML.Form.Data.File: CustomStringConvertible {
    public var description: String { "<File: \(name), type: \(type), size: \(size) bytes>" }
}

extension WHATWG.HTML.Form.Data.File {

    public enum MIMEType {
    }
}

extension WHATWG.HTML.Form.Data.File.MIMEType {

    public static let plainText = "text/plain"

    public static let html = "text/html"

    public static let css = "text/css"

    public static let javascript = "text/javascript"

    public static let json = "application/json"

    public static let xml = "application/xml"

    public static let pdf = "application/pdf"

    public static let zip = "application/zip"

    public static let jpeg = "image/jpeg"

    public static let png = "image/png"

    public static let gif = "image/gif"

    public static let webp = "image/webp"

    public static let svg = "image/svg+xml"

    public static let mp3 = "audio/mpeg"

    public static let mp4 = "video/mp4"

    public static let webm = "video/webm"

    public static let octetStream = "application/octet-stream"
}
