public import WHATWG_HTML_Shared

extension WHATWG.HTML.Rows {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Rows.Attribute {

    @inlinable public static var attribute: String { "rows" }
}

extension WHATWG.HTML.Rows.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) { self.init(value: String(value)) }
}
