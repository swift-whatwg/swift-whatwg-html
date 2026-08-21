public import WHATWG_HTML_Shared

extension WHATWG.HTML.Slot {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Slot.Attribute {

    @inlinable public static var attribute: String { "slot" }
}
