public import WHATWG_HTML_Shared

extension WHATWG.HTML.Popover {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Popover.Attribute {

    @inlinable public static var attribute: String { "popover" }
}

extension WHATWG.HTML.Popover.Attribute {

    @inlinable public static var auto: Self { "auto" }

    @inlinable public static var manual: Self { "manual" }

    @inlinable public static var hint: Self { "hint" }
}

extension WHATWG.HTML.Popover.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Popover.Attribute] = [.auto, .manual, .hint]
}
