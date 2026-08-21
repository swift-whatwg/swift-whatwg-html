public import WHATWG_HTML_Shared

extension WHATWG.HTML.ImageSrcSet {
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.ImageSrcSet.Attribute {

    @inlinable public static var attribute: String { "imagesrcset" }
}
