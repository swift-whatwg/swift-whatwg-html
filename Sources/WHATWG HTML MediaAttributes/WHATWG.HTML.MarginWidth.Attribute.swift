import Geometry_Primitives
public import WHATWG_HTML_Shared

extension WHATWG.HTML.MarginWidth {
    @dynamicMemberLookup
    public struct Attribute: WHATWG.HTML.StringAttribute, ExpressibleByIntegerLiteral {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(integerLiteral value: Int) { self.rawValue = String(value) }
    }
}

extension WHATWG.HTML.MarginWidth.Attribute {

    @inlinable public static var attribute: String { "marginwidth" }
}
