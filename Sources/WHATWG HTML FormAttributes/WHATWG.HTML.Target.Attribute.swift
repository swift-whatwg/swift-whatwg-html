public import WHATWG_HTML_Shared

extension WHATWG.HTML.Target {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(_ value: String) { self.init(value: value) }
    }
}

extension WHATWG.HTML.Target.Attribute {

    @inlinable public static var attribute: String { "target" }
}

extension WHATWG.HTML.Target.Attribute: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) { self.init(value) }
}

extension WHATWG.HTML.Target.Attribute {

    @inlinable public static var `self`: Self { "_self" }

    @inlinable public static var blank: Self { "_blank" }

    @inlinable public static var parent: Self { "_parent" }

    @inlinable public static var top: Self { "_top" }

    @inlinable public static var unfencedTop: Self { "_unfencedTop" }
}
