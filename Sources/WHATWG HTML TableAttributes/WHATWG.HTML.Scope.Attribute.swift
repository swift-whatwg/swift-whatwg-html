public import WHATWG_HTML_Shared

extension WHATWG.HTML.Scope {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Scope.Attribute {

    @inlinable public static var attribute: String { "scope" }
}

extension WHATWG.HTML.Scope.Attribute {

    @inlinable public static var row: Self { "row" }

    @inlinable public static var col: Self { "col" }

    @inlinable public static var rowgroup: Self { "rowgroup" }

    @inlinable public static var colgroup: Self { "colgroup" }
}
