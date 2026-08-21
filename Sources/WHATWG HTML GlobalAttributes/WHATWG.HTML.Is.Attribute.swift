public import WHATWG_HTML_Shared

extension WHATWG.HTML.Is {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Is.Attribute {

    @inlinable public static var attribute: String { "is" }
}
