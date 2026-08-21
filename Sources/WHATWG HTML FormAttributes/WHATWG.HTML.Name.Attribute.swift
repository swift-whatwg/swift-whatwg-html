public import WHATWG_HTML_Shared

extension WHATWG.HTML.Name {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Name.Attribute {

    @inlinable public static var attribute: String { "name" }
}
