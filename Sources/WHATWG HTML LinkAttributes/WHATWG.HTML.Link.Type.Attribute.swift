public import RFC_2045
import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Link.`Type` {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
    }
}

extension WHATWG.HTML.Link.`Type`.Attribute {

    @inlinable public static var attribute: String { "type" }
}

extension WHATWG.HTML.Link.`Type`.Attribute {

    public static let css = Self(contentType: .textCSS)

    public static let javascript = Self(contentType: .textJavaScript)

    public static let icon = Self(contentType: .imageXIcon)

    public static let svg = Self(contentType: .imageSVG)

    public static let png = Self(contentType: .imagePNG)

    public static let manifest = Self(
        contentType: .applicationManifestJSON
    )

    public static let rss = Self(contentType: .applicationRSSXML)

    public static let atom = Self(contentType: .applicationAtomXML)

    public static let json = Self(contentType: .applicationJSON)
}
