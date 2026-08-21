public import WHATWG_HTML_Shared

extension WHATWG.HTML.Itemprop {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Itemprop.Attribute {

    @inlinable public static var attribute: String { "itemprop" }
}

extension WHATWG.HTML.Itemprop.Attribute: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self.rawValue = elements.joined(separator: " ")
    }
}
