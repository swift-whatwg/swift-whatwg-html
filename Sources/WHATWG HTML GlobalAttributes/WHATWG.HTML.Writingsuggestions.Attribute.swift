public import WHATWG_HTML_Shared

extension WHATWG.HTML.Writingsuggestions {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Writingsuggestions.Attribute {

    @inlinable public static var attribute: String { "writingsuggestions" }
}

extension WHATWG.HTML.Writingsuggestions.Attribute {

    @inlinable public static var `true`: Self { "true" }

    @inlinable public static var `false`: Self { "false" }
}

extension WHATWG.HTML.Writingsuggestions.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Writingsuggestions.Attribute] = [.true, .false]
}
