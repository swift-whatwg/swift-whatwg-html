public import WHATWG_HTML_Shared

extension WHATWG.HTML.FormTarget {
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.FormTarget.Attribute {

    @inlinable public static var attribute: String { "formtarget" }
}

extension WHATWG.HTML.FormTarget.Attribute {

    @inlinable public static var `self`: Self { "_self" }

    @inlinable public static var blank: Self { "_blank" }

    @inlinable public static var parent: Self { "_parent" }

    @inlinable public static var top: Self { "_top" }

    @inlinable public static var unfencedTop: Self { "_unfencedTop" }
}
