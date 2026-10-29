public import RFC_2045
public import WHATWG_HTML_Shared

extension WHATWG.HTML.ExternalObject.`Type` {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
    }
}

extension WHATWG.HTML.ExternalObject.`Type`.Attribute {

    @inlinable public static var attribute: String { "type" }
}

extension WHATWG.HTML.ExternalObject.`Type`.Attribute {

    public static let pdf = Self(contentType: .applicationPDF)

    public static let mp4 = Self(contentType: .videoMP4)

    public static let mp3 = Self(contentType: .audioMPEG)

    public static let jpeg = Self(contentType: .imageJPEG)

    public static let png = Self(contentType: .imagePNG)

    public static let html = Self(contentType: .textHTML)
}
