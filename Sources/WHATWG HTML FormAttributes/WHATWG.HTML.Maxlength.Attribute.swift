public import WHATWG_HTML_Shared

extension WHATWG.HTML.Maxlength {

    public struct Attribute: WHATWG.HTML.Attribute {

        public var value: Int

        public init(_ value: Int) {

            self.value = max(0, value)
        }
    }
}

extension WHATWG.HTML.Maxlength.Attribute {

    @inlinable public static var attribute: String { "maxlength" }
}

extension WHATWG.HTML.Maxlength.Attribute {

    public static func characters(_ count: Int) -> WHATWG.HTML.Maxlength.Attribute {
        return WHATWG.HTML.Maxlength.Attribute(count)
    }
}

extension WHATWG.HTML.Maxlength.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) { self.value = max(0, value) }
}

extension WHATWG.HTML.Maxlength.Attribute: CustomStringConvertible {

    public var description: String { return String(self.value) }
}
