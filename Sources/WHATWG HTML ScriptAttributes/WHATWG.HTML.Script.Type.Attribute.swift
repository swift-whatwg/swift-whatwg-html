public import RFC_2045
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Script.`Type` {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(contentType: RFC_2045.ContentType) { self.rawValue = contentType.headerValue }
    }
}

extension WHATWG.HTML.Script.`Type`.Attribute {

    @inlinable public static var attribute: String { "type" }
}

extension WHATWG.HTML.Script.`Type`.Attribute {

    public static let module = Self("module")

    public static let importmap = Self("importmap")

    public static let speculationrules = Self("speculationrules")
}

extension WHATWG.HTML.Script.`Type`.Attribute {

    public static let json = Self(contentType: .applicationJSON)

    public static let textPlain = Self(contentType: .textPlain)
}

extension RFC_2045.ContentType {

    public static let applicationJSON = RFC_2045.ContentType(
        __unchecked: (),
        type: "application",
        subtype: "json"
    )
}
