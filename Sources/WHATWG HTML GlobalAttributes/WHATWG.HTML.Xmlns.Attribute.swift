public import WHATWG_HTML_Shared

extension WHATWG.HTML.Xmlns {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(_ value: String) { self.init(value: value) }
    }
}

extension WHATWG.HTML.Xmlns.Attribute {

    @inlinable public static var attribute: String { "xmlns" }

    @inlinable public static var html: Self { "http://www.w3.org/1999/xhtml" }
}
