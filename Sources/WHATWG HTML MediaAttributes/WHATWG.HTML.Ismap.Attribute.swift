public import WHATWG_HTML_Shared

extension WHATWG.HTML.Ismap {
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.BooleanAttribute {
        public var rawValue: Bool

        public init(value: Bool = true) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Ismap.Attribute {

    @inlinable public static var attribute: String { "ismap" }
}
