public import WHATWG_HTML_Shared

extension WHATWG.HTML.Itemtype {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Itemtype.Attribute {

    @inlinable public static var attribute: String { "itemtype" }
}

extension WHATWG.HTML.Itemtype.Attribute {

    public init(schemaOrg type: String) { self = .init("https://schema.org/\(type)") }
}

extension WHATWG.HTML.Itemtype.Attribute: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) { self = .init(elements.joined(separator: " ")) }
}
