public import WHATWG_HTML_Shared

extension WHATWG.HTML.FetchPriority {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.FetchPriority.Attribute {

    @inlinable public static var attribute: String { "fetchpriority" }
}

extension WHATWG.HTML.FetchPriority.Attribute {

    @inlinable public static var high: Self { "high" }

    @inlinable public static var low: Self { "low" }

    @inlinable public static var auto: Self { "auto" }
}

extension WHATWG.HTML.FetchPriority.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.FetchPriority.Attribute] = [.high, .low, .auto]
}
