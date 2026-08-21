public import WHATWG_HTML_Shared

extension WHATWG.HTML.OrderedList.`Type` {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.OrderedList.`Type`.Attribute {

    @inlinable public static var attribute: String { "type" }
}

extension WHATWG.HTML.OrderedList.`Type`.Attribute {

    @inlinable public static var lowerAlpha: Self { "a" }

    @inlinable public static var upperAlpha: Self { "A" }

    @inlinable public static var lowerRoman: Self { "i" }

    @inlinable public static var upperRoman: Self { "I" }

    @inlinable public static var decimal: Self { "1" }
}
