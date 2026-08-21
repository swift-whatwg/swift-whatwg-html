public import WHATWG_HTML_Shared

extension WHATWG.HTML.Placeholder {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Placeholder.Attribute {

    @inlinable public static var attribute: String { "placeholder" }
}

extension WHATWG.HTML.Placeholder.Attribute {

    @inlinable public static var email: Self { "email" }

    @inlinable public static var phone: Self { "phone" }

    @inlinable public static var name: Self { "name" }

    @inlinable public static var search: Self { "search" }

    @inlinable public static var url: Self { "url" }
}
