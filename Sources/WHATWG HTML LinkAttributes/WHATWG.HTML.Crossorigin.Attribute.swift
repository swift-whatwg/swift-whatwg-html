public import WHATWG_HTML_Shared

extension WHATWG.HTML.Crossorigin {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Crossorigin.Attribute {

    @inlinable public static var attribute: String { "crossorigin" }
}

extension WHATWG.HTML.Crossorigin.Attribute {

    @inlinable public static var anonymous: Self { "anonymous" }

    @inlinable public static var useCredentials: Self { "use-credentials" }
}
