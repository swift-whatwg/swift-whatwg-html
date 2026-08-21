public import WHATWG_HTML_Shared

extension WHATWG.HTML.Behavior {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Behavior.Attribute {

    @inlinable public static var attribute: String { "behavior" }
}

extension WHATWG.HTML.Behavior.Attribute {

    public static let scroll: Self = Self("scroll")

    public static let slide: Self = Self("slide")

    public static let alternate: Self = Self("alternate")
}
