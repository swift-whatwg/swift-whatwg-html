public import WHATWG_HTML_Shared

extension WHATWG.HTML.Inert {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.BooleanAttribute {
        public var rawValue: Bool

        public init(value: Bool = true) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Inert.Attribute {

    @inlinable public static var attribute: String { "inert" }
}
