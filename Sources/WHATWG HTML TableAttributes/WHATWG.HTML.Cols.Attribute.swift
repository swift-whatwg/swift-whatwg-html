public import WHATWG_HTML_Shared

extension WHATWG.HTML.Cols {
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Cols.Attribute {

    @inlinable public static var attribute: String { "cols" }
}

extension WHATWG.HTML.Cols.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) { self = .init(value: value.description) }
}
