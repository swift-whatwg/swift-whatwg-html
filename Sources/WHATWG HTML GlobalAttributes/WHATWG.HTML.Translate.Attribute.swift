public import WHATWG_HTML_Shared

extension WHATWG.HTML.Translate {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Translate.Attribute {

    @inlinable public static var attribute: String { "translate" }
}

extension WHATWG.HTML.Translate.Attribute {

    @inlinable public static var yes: Self { "yes" }

    @inlinable public static var no: Self { "no" }
}

extension WHATWG.HTML.Translate.Attribute: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: BooleanLiteralType) {
        switch value {
        case true: self = .yes
        case false: self = .no
        }
    }
}

extension WHATWG.HTML.Translate.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Translate.Attribute] = [.yes, .no]
}
