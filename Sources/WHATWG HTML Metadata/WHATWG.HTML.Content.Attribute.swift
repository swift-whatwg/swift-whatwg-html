public import WHATWG_HTML_Shared

extension WHATWG.HTML.Content {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Content.Attribute {
    @inlinable public static var attribute: String { "content" }
}

extension WHATWG.HTML.Content.Attribute: CustomStringConvertible {
    public var description: String { rawValue }
}

extension WHATWG.HTML.Content.Attribute: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) { self.init(value: value) }
}

extension WHATWG.HTML.Content.Attribute: RawRepresentable {
    public init?(rawValue: String) { self.init(value: rawValue) }
}
