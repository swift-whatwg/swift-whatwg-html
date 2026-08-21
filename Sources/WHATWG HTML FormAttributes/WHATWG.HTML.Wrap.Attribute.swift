public import WHATWG_HTML_Shared

extension WHATWG.HTML.Wrap {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }

        public init(_ value: String) { self.init(value: value) }
    }
}

extension WHATWG.HTML.Wrap.Attribute {

    @inlinable public static var attribute: String { "wrap" }

    public static let hard = WHATWG.HTML.Wrap.Attribute("hard")

    public static let soft = WHATWG.HTML.Wrap.Attribute("soft")
}
