public import WHATWG_HTML_Shared

extension WHATWG.HTML.Draggable {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Draggable.Attribute {

    @inlinable public static var attribute: String { "draggable" }
}

extension WHATWG.HTML.Draggable.Attribute {

    @inlinable public static var `true`: Self { "true" }

    @inlinable public static var `false`: Self { "false" }

    @inlinable public static var auto: Self { "auto" }
}

extension WHATWG.HTML.Draggable.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Draggable.Attribute] = [.true, .false, .auto]
}

extension WHATWG.HTML.Draggable.Attribute: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: BooleanLiteralType) {
        switch value {
        case true: self = .true
        case false: self = .false
        }
    }
}
