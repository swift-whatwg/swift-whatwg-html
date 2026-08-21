public import WHATWG_HTML_Shared

extension WHATWG.HTML.ReferrerPolicy {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.ReferrerPolicy.Attribute {
    @inlinable public static var attribute: String { "referrerpolicy" }
}

extension WHATWG.HTML.ReferrerPolicy.Attribute {

    @inlinable public static var noReferrer: Self { "no-referrer" }

    @inlinable public static var noReferrerWhenDowngrade: Self { "no-referrer-when-downgrade" }

    @inlinable public static var origin: Self { "origin" }

    @inlinable public static var originWhenCrossOrigin: Self { "origin-when-cross-origin" }

    @inlinable public static var sameOrigin: Self { "same-origin" }

    @inlinable public static var strictOrigin: Self { "strict-origin" }

    @inlinable public static var strictOriginWhenCrossOrigin: Self {
        "strict-origin-when-cross-origin"
    }

    @inlinable public static var unsafeUrl: Self { "unsafe-url" }
}
