public import RFC_3986
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Action {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Action.Attribute {

    @inlinable public static var attribute: String { "action" }
}

extension WHATWG.HTML.Action.Attribute {

    public static func relative(_ path: RFC_3986.URI.Path) -> WHATWG.HTML.Action.Attribute {

        let text = path.description
        let formattedPath = text.hasPrefix("/") ? text : "/\(text)"
        return WHATWG.HTML.Action.Attribute(formattedPath)
    }

    public static func absolute(_ url: RFC_3986.URI) -> WHATWG.HTML.Action.Attribute {
        return WHATWG.HTML.Action.Attribute(url.value)
    }

    public static let current: WHATWG.HTML.Action.Attribute = WHATWG.HTML.Action.Attribute(".")

    public static let clientSide: WHATWG.HTML.Action.Attribute = WHATWG.HTML.Action.Attribute("#")
}
