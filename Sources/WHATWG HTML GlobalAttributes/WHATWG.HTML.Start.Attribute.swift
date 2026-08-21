public import WHATWG_HTML_Shared

extension WHATWG.HTML.Start {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(_ value: Int) { self.init(value: String(value)) }
    }
}

extension WHATWG.HTML.Start.Attribute {

    @inlinable public static var attribute: String { "start" }
}

extension WHATWG.HTML.Start.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) { self.init(value) }
}
