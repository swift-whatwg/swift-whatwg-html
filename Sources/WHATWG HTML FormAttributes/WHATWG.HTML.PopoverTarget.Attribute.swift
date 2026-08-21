public import WHATWG_HTML_Shared

extension WHATWG.HTML.PopoverTarget {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.PopoverTarget.Attribute {

    @inlinable public static var attribute: String { "popovertarget" }
}
