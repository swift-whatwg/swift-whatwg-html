public import WHATWG_HTML_Shared

extension WHATWG.HTML.AcceptCharset {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.AcceptCharset.Attribute {

    @inlinable public static var attribute: String { "accept-charset" }
}

extension WHATWG.HTML.AcceptCharset.Attribute {

    public static let utf8: WHATWG.HTML.AcceptCharset.Attribute = "UTF-8"

    public static let latin1: WHATWG.HTML.AcceptCharset.Attribute = "ISO-8859-1"

    public static let ascii: WHATWG.HTML.AcceptCharset.Attribute = "US-ASCII"

    public static let windows1252: WHATWG.HTML.AcceptCharset.Attribute = "windows-1252"

    public static let utf8AndLatin1: WHATWG.HTML.AcceptCharset.Attribute = "UTF-8,ISO-8859-1"
}
