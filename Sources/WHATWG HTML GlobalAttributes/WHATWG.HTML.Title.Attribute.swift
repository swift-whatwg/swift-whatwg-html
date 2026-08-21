public import WHATWG_HTML_Shared

extension WHATWG.HTML.Title {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Title.Attribute {

    @inlinable public static var attribute: String { "title" }
}

extension WHATWG.HTML.Title.Attribute: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: String...) {
        self = .init(value: elements.joined(separator: "\n"))
    }
}

extension WHATWG.HTML.Title.Attribute {

    @inlinable public static var empty: Self { "" }
}
