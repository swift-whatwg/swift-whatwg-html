public import WHATWG_HTML_Shared

extension WHATWG.HTML.Usemap {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) {

            if value.hasPrefix("#") { self.rawValue = value } else { self.rawValue = "#" + value }
        }

        public init(_ value: String) { self.init(value: value) }
    }
}

extension WHATWG.HTML.Usemap.Attribute {

    @inlinable public static var attribute: String { "usemap" }
}

extension WHATWG.HTML.Usemap.Attribute: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) { self.init(value) }
}
