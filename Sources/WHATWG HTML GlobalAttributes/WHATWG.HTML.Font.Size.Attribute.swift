public import WHATWG_HTML_Shared

extension WHATWG.HTML.Font.Size {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Font.Size.Attribute {

    @inlinable public static var attribute: String { "size" }
}

extension WHATWG.HTML.Font.Size.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: IntegerLiteralType) { self.init(numericValue: value) }
}

extension WHATWG.HTML.Font.Size.Attribute {

    public init(numericValue: Int) {
        precondition(numericValue >= 1 && numericValue <= 7, "Font size must be between 1 and 7")
        self.rawValue = String(numericValue)
    }

    public init(relativeValue: Int) {
        if relativeValue > 0 {
            self.rawValue = "+\(relativeValue)"
        } else {
            self.rawValue = "\(relativeValue)"
        }
    }
}
