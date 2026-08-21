public import WHATWG_HTML_Shared

extension WHATWG.HTML.NoResize {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.BooleanAttribute {

        public var rawValue: Bool

        public init(value: Bool = true) { self.rawValue = value }
    }
}

extension WHATWG.HTML.NoResize.Attribute {

    @inlinable public static var attribute: String { "noresize" }
}
