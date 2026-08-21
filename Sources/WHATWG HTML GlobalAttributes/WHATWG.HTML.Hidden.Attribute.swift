public import WHATWG_HTML_Shared

extension WHATWG.HTML.Hidden {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Hidden.Attribute {

    @inlinable public static var attribute: String { "hidden" }
}

extension WHATWG.HTML.Hidden.Attribute { public init() { self = .hidden } }

extension WHATWG.HTML.Hidden.Attribute {

    @inlinable public static var empty: Self { "" }

    @inlinable public static var hidden: Self { "hidden" }

    @inlinable public static var untilFound: Self { "until-found" }
}

extension WHATWG.HTML.Hidden.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Hidden.Attribute] = [.empty, .hidden, .untilFound]
}
