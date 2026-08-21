public import WHATWG_HTML_Shared

extension WHATWG.HTML.Poster {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Poster.Attribute {

    @inlinable public static var attribute: String { "poster" }
}
