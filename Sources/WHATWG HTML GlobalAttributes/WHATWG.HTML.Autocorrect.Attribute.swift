public import WHATWG_HTML_Shared

extension WHATWG.HTML.Autocorrect {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Autocorrect.Attribute {

    @inlinable public static var attribute: String { "autocorrect" }
}

extension WHATWG.HTML.Autocorrect.Attribute {

    @inlinable public static var on: Self { "on" }

    @inlinable public static var empty: Self { "\"\"" }

    @inlinable public static var off: Self { "off" }
}

extension WHATWG.HTML.Autocorrect.Attribute: CaseIterable {
    @inlinable public static var allCases: [Self] { [.on, .off, .empty] }
}
