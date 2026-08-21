public import WHATWG_HTML_Shared

extension WHATWG.HTML.Inputmode {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Inputmode.Attribute {

    @inlinable public static var attribute: String { "inputmode" }
}

extension WHATWG.HTML.Inputmode.Attribute {

    @inlinable public static var none: Self { "none" }

    @inlinable public static var text: Self { "text" }

    @inlinable public static var decimal: Self { "decimal" }

    @inlinable public static var numeric: Self { "numeric" }

    @inlinable public static var tel: Self { "tel" }

    @inlinable public static var search: Self { "search" }

    @inlinable public static var email: Self { "email" }

    @inlinable public static var url: Self { "url" }
}

extension WHATWG.HTML.Inputmode.Attribute: CaseIterable {
    public static let allCases: [WHATWG.HTML.Inputmode.Attribute] = [
        .none, .text, .decimal, .numeric, .tel, .search, .email, .url,
    ]
}
