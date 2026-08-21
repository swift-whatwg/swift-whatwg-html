public import WHATWG_HTML_Shared

extension WHATWG.HTML.Pattern {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Pattern.Attribute {

    @inlinable public static var attribute: String { "pattern" }
}

extension WHATWG.HTML.Pattern.Attribute {

    public static let username = WHATWG.HTML.Pattern.Attribute("[a-zA-Z0-9]{3,16}")

    public static let usPhone = WHATWG.HTML.Pattern.Attribute("[0-9]{3}-[0-9]{3}-[0-9]{4}")

    public static let usZipCode = WHATWG.HTML.Pattern.Attribute("[0-9]{5}(-[0-9]{4})?")

    public static let integer = WHATWG.HTML.Pattern.Attribute("[0-9]+")

    public static let alphanumeric = WHATWG.HTML.Pattern.Attribute("[a-zA-Z0-9]+")
}
