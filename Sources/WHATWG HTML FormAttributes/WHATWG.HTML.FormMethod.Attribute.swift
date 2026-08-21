public import WHATWG_HTML_Shared

extension WHATWG.HTML.FormMethod {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value.lowercased() }
    }
}

extension WHATWG.HTML.FormMethod.Attribute {

    @inlinable public static var attribute: String { "formmethod" }
}

extension WHATWG.HTML.FormMethod.Attribute {

    @inlinable public static var get: Self { "get" }

    @inlinable public static var post: Self { "post" }

    @inlinable public static var dialog: Self { "dialog" }
}
