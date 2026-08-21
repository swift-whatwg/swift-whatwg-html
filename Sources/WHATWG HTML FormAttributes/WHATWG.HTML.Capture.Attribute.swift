public import WHATWG_HTML_Shared

extension WHATWG.HTML.Capture {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Capture.Attribute {

    @inlinable public static var attribute: String { "capture" }
}

extension WHATWG.HTML.Capture.Attribute {

    public static let user: WHATWG.HTML.Capture.Attribute = "user"

    public static let environment: WHATWG.HTML.Capture.Attribute = "environment"
}
