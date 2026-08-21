public import WHATWG_HTML_Shared

extension WHATWG.HTML.Class {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Class.Attribute {

    @inlinable public static var attribute: String { "class" }
}

extension WHATWG.HTML.Class.Attribute: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self = .init(value: elements.joined(separator: " "))
    }
}
