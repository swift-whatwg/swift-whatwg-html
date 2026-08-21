public import WHATWG_HTML_Shared

extension WHATWG.HTML.Size {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Size.Attribute {

    @inlinable public static var attribute: String { "size" }
}

extension WHATWG.HTML.Size.Attribute {

    public static let standardTextField = WHATWG.HTML.Size.Attribute(30)

    public static let smallTextField = WHATWG.HTML.Size.Attribute(10)

    public static let largeTextField = WHATWG.HTML.Size.Attribute(50)

    public static let standardListbox = WHATWG.HTML.Size.Attribute(5)
}

extension WHATWG.HTML.Size.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) { self.rawValue = String(max(1, value)) }
}
