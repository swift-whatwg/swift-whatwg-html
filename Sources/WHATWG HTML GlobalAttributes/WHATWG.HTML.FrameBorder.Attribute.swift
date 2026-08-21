public import WHATWG_HTML_Shared

extension WHATWG.HTML.FrameBorder {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.FrameBorder.Attribute {

    @inlinable public static var attribute: String { "frameborder" }
}

extension WHATWG.HTML.FrameBorder.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) { self.rawValue = String(value) }
}
