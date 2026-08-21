public import WHATWG_HTML_Shared

extension WHATWG.HTML.Part {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Part.Attribute {

    @inlinable public static var attribute: String { "part" }
}

extension WHATWG.HTML.Part.Attribute: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self = .init(value: elements.joined(separator: " "))
    }
}
