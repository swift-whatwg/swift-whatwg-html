public import WHATWG_HTML_Shared

extension WHATWG.HTML.Contenteditable {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Contenteditable.Attribute {

    @inlinable public static var attribute: String { "contenteditable" }
}

extension WHATWG.HTML.Contenteditable.Attribute {

    @inlinable public static var `true`: Self { "true" }

    @inlinable public static var empty: Self { "" }

    @inlinable public static var `false`: Self { "false" }

    @inlinable public static var plaintextOnly: Self { "plaintext-only" }
}

extension WHATWG.HTML.Contenteditable.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Contenteditable.Attribute] = [
        .true, .empty, .false, .plaintextOnly,
    ]
}

extension WHATWG.HTML.Contenteditable.Attribute: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: BooleanLiteralType) {
        switch value {
        case true: self = .true
        case false: self = .false
        }
    }
}
