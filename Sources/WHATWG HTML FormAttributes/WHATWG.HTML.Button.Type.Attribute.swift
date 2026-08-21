public import WHATWG_HTML_Shared

extension WHATWG.HTML.Button.`Type` {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Button.`Type`.Attribute {
    @inlinable public static var attribute: String { "type" }
}

extension WHATWG.HTML.Button.`Type`.Attribute {

    @inlinable public static var submit: Self { "submit" }

    @inlinable public static var reset: Self { "reset" }

    @inlinable public static var button: Self { "button" }
}
