public import WHATWG_HTML_Shared

extension WHATWG.HTML.Muted {
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.BooleanAttribute {

        public var rawValue: Bool

        public init(value: Bool = true) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Muted.Attribute {

    @inlinable public static var attribute: String { "muted" }
}
