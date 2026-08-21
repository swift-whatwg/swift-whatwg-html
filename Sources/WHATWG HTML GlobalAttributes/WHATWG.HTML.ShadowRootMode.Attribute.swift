public import WHATWG_HTML_Shared

extension WHATWG.HTML.ShadowRootMode {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.ShadowRootMode.Attribute {

    @inlinable public static var attribute: String { "shadowrootmode" }
}

extension WHATWG.HTML.ShadowRootMode.Attribute {

    @inlinable public static var open: Self { "open" }

    @inlinable public static var closed: Self { "closed" }
}
