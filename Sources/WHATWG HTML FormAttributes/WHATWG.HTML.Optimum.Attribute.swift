public import WHATWG_HTML_Shared

extension WHATWG.HTML.Optimum {

    public struct Attribute: WHATWG.HTML.Attribute, CustomStringConvertible {

        public var value: Double

        public init(_ value: Double) { self.value = value }
    }
}

extension WHATWG.HTML.Optimum.Attribute {

    @inlinable public static var attribute: String { "optimum" }
}

extension WHATWG.HTML.Optimum.Attribute: ExpressibleByFloatLiteral {
    public init(floatLiteral value: FloatLiteralType) { self.value = value }
}

extension WHATWG.HTML.Optimum.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) { self.value = Double(value) }
}

extension WHATWG.HTML.Optimum.Attribute {

    public var description: String { return String(self.value) }
}
