public import WHATWG_HTML_Shared

extension WHATWG.HTML.Headers {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Headers.Attribute {

    @inlinable public static var attribute: String { "headers" }
}

extension WHATWG.HTML.Headers.Attribute: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: String...) {
        self = .init(value: elements.joined(separator: " "))
    }
}
