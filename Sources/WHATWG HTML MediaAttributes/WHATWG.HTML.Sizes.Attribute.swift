public import WHATWG_HTML_Shared

extension WHATWG.HTML.Sizes {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Sizes.Attribute {

    @inlinable public static var attribute: String { "sizes" }
}
