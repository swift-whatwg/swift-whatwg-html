public import WHATWG_HTML_Shared

extension WHATWG.HTML.Preload {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Preload.Attribute {

    @inlinable public static var attribute: String { "preload" }
}

extension WHATWG.HTML.Preload.Attribute {

    @inlinable public static var none: Self { "none" }

    @inlinable public static var metadata: Self { "metadata" }

    @inlinable public static var auto: Self { "auto" }
}
