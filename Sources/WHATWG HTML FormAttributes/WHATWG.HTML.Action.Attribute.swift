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

    public static func relative(_ path: String) -> WHATWG.HTML.Action.Attribute {

        let formattedPath = path.hasPrefix("/") ? path : "/\(path)"
        return WHATWG.HTML.Action.Attribute(formattedPath)
    }

    public static func absolute(_ url: String) -> WHATWG.HTML.Action.Attribute {
        return WHATWG.HTML.Action.Attribute(url)
    }

    public static let current: WHATWG.HTML.Action.Attribute = WHATWG.HTML.Action.Attribute(".")

    public static let clientSide: WHATWG.HTML.Action.Attribute = WHATWG.HTML.Action.Attribute("#")
}
