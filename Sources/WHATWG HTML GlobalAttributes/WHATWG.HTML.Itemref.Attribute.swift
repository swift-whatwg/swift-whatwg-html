public import WHATWG_HTML_Shared

extension WHATWG.HTML.Itemref {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Itemref.Attribute {

    @inlinable public static var attribute: String { "itemref" }
}

extension WHATWG.HTML.Itemref.Attribute: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self = .init(value: elements.joined(separator: " "))
    }
}
