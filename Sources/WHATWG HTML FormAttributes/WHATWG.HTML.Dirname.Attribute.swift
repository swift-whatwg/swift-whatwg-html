public import WHATWG_HTML_Shared

extension WHATWG.HTML.Dirname {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Dirname.Attribute {

    @inlinable public static var attribute: String { "dirname" }
}

extension WHATWG.HTML.Dirname.Attribute {

    public init(basedOn elementName: String, suffix: String = "-direction") {
        self.rawValue = elementName + suffix
    }
}
