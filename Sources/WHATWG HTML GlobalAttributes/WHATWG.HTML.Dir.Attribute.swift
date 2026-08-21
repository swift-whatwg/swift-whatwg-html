public import WHATWG_HTML_Shared

extension WHATWG.HTML.Dir {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Dir.Attribute {

    @inlinable public static var attribute: String { "dir" }
}

extension WHATWG.HTML.Dir.Attribute {

    @inlinable public static var ltr: Self { "ltr" }

    @inlinable public static var rtl: Self { "rtl" }

    @inlinable public static var auto: Self { "auto" }
}

extension WHATWG.HTML.Dir.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Dir.Attribute] = [ltr, rtl, auto]
}
