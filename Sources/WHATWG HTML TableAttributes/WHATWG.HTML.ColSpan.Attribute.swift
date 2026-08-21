import Geometry_Primitives
public import WHATWG_HTML_Shared

extension WHATWG.HTML.ColSpan {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.ColSpan.Attribute {

    @inlinable public static var attribute: String { "colspan" }
}

extension WHATWG.HTML.ColSpan.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.rawValue = String(value)
    }
}
