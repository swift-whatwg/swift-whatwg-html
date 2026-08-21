public import WHATWG_HTML_Shared

extension WHATWG.HTML.High {

    public struct Attribute: WHATWG.HTML.Attribute, CustomStringConvertible {

        public let value: Double

        public init(_ value: Double) { self.value = value }
    }
}

extension WHATWG.HTML.High.Attribute {

    @inlinable public static var attribute: String { "high" }
}

extension WHATWG.HTML.High.Attribute: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) { self.value = value }
}

extension WHATWG.HTML.High.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) { self.value = Double(value) }
}

extension WHATWG.HTML.High.Attribute {

    public var description: String { return String(self.value) }
}
