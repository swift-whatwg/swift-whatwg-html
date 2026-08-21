public import WHATWG_HTML_Shared

extension WHATWG.HTML.For {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(_ value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.For.Attribute {

    @inlinable public static var attribute: String { "for" }
}

extension WHATWG.HTML.For.Attribute: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self.rawValue = elements.joined(separator: " ")
    }
}
