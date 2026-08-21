public import WHATWG_HTML_Shared

extension WHATWG.HTML.Integrity {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Integrity.Attribute {

    @inlinable public static var attribute: String { "integrity" }
}

extension WHATWG.HTML.Integrity.Attribute {

    public static func sha256(_ hash: String) -> WHATWG.HTML.Integrity.Attribute {
        return WHATWG.HTML.Integrity.Attribute("sha256-\(hash)")
    }

    public static func sha384(_ hash: String) -> WHATWG.HTML.Integrity.Attribute {
        return WHATWG.HTML.Integrity.Attribute("sha384-\(hash)")
    }

    public static func sha512(_ hash: String) -> WHATWG.HTML.Integrity.Attribute {
        return WHATWG.HTML.Integrity.Attribute("sha512-\(hash)")
    }
}
