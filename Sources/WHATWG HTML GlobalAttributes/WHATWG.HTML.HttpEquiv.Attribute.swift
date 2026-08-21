public import WHATWG_HTML_Shared

extension WHATWG.HTML.HttpEquiv {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.HttpEquiv.Attribute {

    @inlinable public static var attribute: String { "http-equiv" }
}

extension WHATWG.HTML.HttpEquiv.Attribute {

    @inlinable public static var contentSecurityPolicy: Self { "content-security-policy" }

    @inlinable public static var contentType: Self { "content-type" }

    @inlinable public static var defaultStyle: Self { "default-style" }

    @inlinable public static var refresh: Self { "refresh" }

    @inlinable public static var xUaCompatible: Self { "x-ua-compatible" }
}
