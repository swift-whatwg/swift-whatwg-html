public import WHATWG_HTML_Shared

extension WHATWG.HTML.Direction {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Direction.Attribute {

    @inlinable public static var attribute: String { "direction" }
}

extension WHATWG.HTML.Direction.Attribute {

    @inlinable public static var left: Self { "left" }

    @inlinable public static var right: Self { "right" }

    @inlinable public static var up: Self { "up" }

    @inlinable public static var down: Self { "down" }
}
