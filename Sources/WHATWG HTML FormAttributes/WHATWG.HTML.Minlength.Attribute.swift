public import WHATWG_HTML_Shared

extension WHATWG.HTML.Minlength {

    public struct Attribute: WHATWG.HTML.Attribute {

        public var value: Int

        public init(_ value: Int) {

            self.value = max(0, value)
        }
    }
}

extension WHATWG.HTML.Minlength.Attribute {

    @inlinable public static var attribute: String { "minlength" }

    public static func characters(_ count: Int) -> WHATWG.HTML.Minlength.Attribute {
        return WHATWG.HTML.Minlength.Attribute(count)
    }

    public static let none = WHATWG.HTML.Minlength.Attribute(0)
}

extension WHATWG.HTML.Minlength.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) { self.value = max(0, value) }
}

extension WHATWG.HTML.Minlength.Attribute: CustomStringConvertible {

    public var description: String { return String(self.value) }
}
