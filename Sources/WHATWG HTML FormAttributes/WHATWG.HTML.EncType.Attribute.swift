public import RFC_2045
public import WHATWG_HTML_Shared

extension WHATWG.HTML.EncType {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
    }
}

extension WHATWG.HTML.EncType.Attribute {

    @inlinable public static var attribute: String { "enctype" }
}

extension WHATWG.HTML.EncType.Attribute {

    public static let urlEncoded = WHATWG.HTML.EncType.Attribute(
        contentType: .applicationXWWWFormURLEncoded
    )

    public static let multipartFormData = WHATWG.HTML.EncType.Attribute(
        contentType: .multipartFormData()
    )

    public static let textPlain = WHATWG.HTML.EncType.Attribute(contentType: .textPlain)
}

extension RFC_2045.ContentType {

    public static let applicationXWWWFormURLEncoded = RFC_2045.ContentType(
        __unchecked: (),
        type: "application",
        subtype: "x-www-form-urlencoded"
    )

    public static func multipartFormData(boundary: String? = nil) -> RFC_2045.ContentType {
        if let boundary {
            return RFC_2045.ContentType(
                __unchecked: (),
                type: "multipart",
                subtype: "form-data",

                parameters: [try! .init("boundary"): boundary]
            )
        } else {

            return RFC_2045.ContentType(__unchecked: (), type: "multipart", subtype: "form-data")
        }
    }
}
