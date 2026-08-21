public import RFC_2045
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Source.`Type` {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
    }
}

extension WHATWG.HTML.Source.`Type`.Attribute {

    @inlinable public static var attribute: String { "type" }
}

extension WHATWG.HTML.Source.`Type`.Attribute {

    public static let videoMP4 = Self(contentType: .videoMP4)

    public static let videoWebM = Self(contentType: .videoWebM)

    public static let videoOgg = Self(contentType: .videoOgg)

    public static let audioMPEG = Self(contentType: .audioMPEG)

    public static let audioOgg = Self(contentType: .audioOgg)

    public static let audioWav = Self(contentType: .audioWav)

    public static let audioWebM = Self(contentType: .audioWebM)

    public static let imageWEBP = Self(contentType: .imageWEBP)

    public static let imageAVIF = Self(contentType: .imageAVIF)
}

extension WHATWG.HTML.Source.`Type`.Attribute {

    public static let css = Self(contentType: .textCSS)

    public static let javascript = Self(contentType: .textJavaScript)

    public static let svg = Self(contentType: .imageSVG)

    public static let png = Self(contentType: .imagePNG)

    public static let manifest = Self(
        contentType: .applicationManifestJSON
    )

    public static let rss = Self(contentType: .applicationRSSXML)

    public static let atom = Self(contentType: .applicationAtomXML)

    public static let json = Self(contentType: .applicationJSON)
}
