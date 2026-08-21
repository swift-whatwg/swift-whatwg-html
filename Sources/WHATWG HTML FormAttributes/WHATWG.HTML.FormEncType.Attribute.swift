public import RFC_2045
public import WHATWG_HTML_Shared

extension WHATWG.HTML.FormEncType {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
    }
}

extension WHATWG.HTML.FormEncType.Attribute {

    @inlinable public static var attribute: String { "formenctype" }
}

extension WHATWG.HTML.FormEncType.Attribute {

    public static let urlEncoded = WHATWG.HTML.FormEncType.Attribute(
        contentType: .applicationXWWWFormURLEncoded
    )

    public static let multipartFormData = WHATWG.HTML.FormEncType.Attribute(
        contentType: .multipartFormData()
    )

    public static let textPlain = WHATWG.HTML.FormEncType.Attribute(contentType: .textPlain)
}
