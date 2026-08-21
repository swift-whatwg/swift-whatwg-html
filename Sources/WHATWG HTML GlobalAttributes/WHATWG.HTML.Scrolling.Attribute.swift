public import WHATWG_HTML_Shared

extension WHATWG.HTML.Scrolling {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Scrolling.Attribute {

    @inlinable public static var attribute: String { "scrolling" }
}

extension WHATWG.HTML.Scrolling.Attribute {

    @inlinable public static var yes: Self { "yes" }

    @inlinable public static var no: Self { "no" }

    @inlinable public static var auto: Self { "auto" }
}
