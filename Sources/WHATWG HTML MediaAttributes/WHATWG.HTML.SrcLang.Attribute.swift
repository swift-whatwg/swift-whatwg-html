public import WHATWG_HTML_Shared

extension WHATWG.HTML.SrcLang {

    @dynamicMemberLookup
    public struct Attribute: WHATWG.HTML.StringAttribute, ExpressibleByStringInterpolation,
        CustomStringConvertible
    {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.SrcLang.Attribute {

    @inlinable public static var attribute: String { "srclang" }
}
