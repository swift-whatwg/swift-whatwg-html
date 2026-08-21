public import WHATWG_HTML_Shared

extension WHATWG.HTML.Ping {
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Ping.Attribute {

    @inlinable public static var attribute: String { "ping" }
}

extension WHATWG.HTML.Ping.Attribute: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: String...) {
        self.rawValue = elements.joined(separator: " ")
    }
}
