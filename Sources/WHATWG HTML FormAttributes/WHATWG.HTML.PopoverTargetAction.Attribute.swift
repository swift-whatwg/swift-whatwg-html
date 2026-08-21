public import WHATWG_HTML_Shared

extension WHATWG.HTML.PopoverTargetAction {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.PopoverTargetAction.Attribute {

    @inlinable public static var attribute: String { "popovertargetaction" }
}

extension WHATWG.HTML.PopoverTargetAction.Attribute {
    @inlinable public static var show: Self { "show" }
    @inlinable public static var hide: Self { "hide" }
    @inlinable public static var toggle: Self { "toggle" }
}
