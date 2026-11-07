public import WHATWG_HTML_Shared

extension WHATWG.HTML.Value {

    public struct Attribute<Element: Sendable & Hashable>: WHATWG.HTML.Attribute {

        public static var attribute: String { "value" }

        public var value: Element

        public init(_ value: Element) { self.value = value }
    }
}

extension WHATWG.HTML.Value.Attribute: LosslessStringConvertible where Element == String {
    public init?(_ description: String) { self = .init(description) }
}

extension WHATWG.HTML.Value.Attribute: ExpressibleByStringLiteral
where Element: ExpressibleByStringLiteral {
    public typealias StringLiteralType = Element.StringLiteralType

    public init(stringLiteral value: StringLiteralType) {
        self.value = Element(stringLiteral: value)
    }
}

extension WHATWG.HTML.Value.Attribute: ExpressibleByExtendedGraphemeClusterLiteral
where Element: ExpressibleByExtendedGraphemeClusterLiteral {
    public typealias ExtendedGraphemeClusterLiteralType = Element.ExtendedGraphemeClusterLiteralType

    public init(extendedGraphemeClusterLiteral value: ExtendedGraphemeClusterLiteralType) {
        self.value = Element(extendedGraphemeClusterLiteral: value)
    }
}

extension WHATWG.HTML.Value.Attribute: ExpressibleByUnicodeScalarLiteral
where Element: ExpressibleByUnicodeScalarLiteral {
    public typealias UnicodeScalarLiteralType = Element.UnicodeScalarLiteralType

    public init(unicodeScalarLiteral value: UnicodeScalarLiteralType) {
        self.value = Element(unicodeScalarLiteral: value)
    }
}

extension WHATWG.HTML.Value.Attribute: ExpressibleByIntegerLiteral
where Element: ExpressibleByIntegerLiteral {
    public typealias IntLiteralType = Element.IntegerLiteralType

    public init(integerLiteral value: IntLiteralType) {
        self.value = Element(integerLiteral: value)
    }
}

extension WHATWG.HTML.Value.Attribute: ExpressibleByFloatLiteral
where Element: ExpressibleByFloatLiteral {
    public typealias FloatLiteralType = Element.FloatLiteralType

    public init(floatLiteral value: FloatLiteralType) { self.value = Element(floatLiteral: value) }
}

extension WHATWG.HTML.Value.Attribute: CustomStringConvertible
where Element: CustomStringConvertible {
    public var description: String { value.description }
}
