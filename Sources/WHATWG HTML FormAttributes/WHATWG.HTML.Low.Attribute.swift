public import WHATWG_HTML_Shared

extension WHATWG.HTML.Low {

    public struct Attribute: WHATWG.HTML.Attribute, CustomStringConvertible {

        public let value: Double

        public init(_ value: Double) { self.value = value }
    }
}

extension WHATWG.HTML.Low.Attribute {

    @inlinable public static var attribute: String { "low" }
}

extension WHATWG.HTML.Low.Attribute: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) { self.value = value }
}

extension WHATWG.HTML.Low.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) { self.value = Double(value) }
}

extension WHATWG.HTML.Low.Attribute {

    public var description: String { return String(self.value) }
}
