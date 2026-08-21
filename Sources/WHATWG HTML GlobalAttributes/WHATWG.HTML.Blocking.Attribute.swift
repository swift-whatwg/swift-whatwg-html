public import WHATWG_HTML_Shared

extension WHATWG.HTML.Blocking {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Blocking.Attribute {

    @inlinable public static var attribute: String { "blocking" }
}

extension WHATWG.HTML.Blocking.Attribute { @inlinable public static var render: Self { "render" } }
