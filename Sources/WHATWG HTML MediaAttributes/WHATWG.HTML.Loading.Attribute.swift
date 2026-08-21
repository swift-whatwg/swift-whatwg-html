public import WHATWG_HTML_Shared

extension WHATWG.HTML.Loading {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Loading.Attribute {
    @inlinable public static var attribute: String { "loading" }
}

extension WHATWG.HTML.Loading.Attribute {
    @inlinable public static var lazy: Self { "lazy" }
    @inlinable public static var eager: Self { "eager" }
}

extension WHATWG.HTML.Loading.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Loading.Attribute] = [.lazy, .eager]
}
