public import WHATWG_HTML_Shared

extension WHATWG.HTML.Method {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value.lowercased() }
    }
}

extension WHATWG.HTML.Method.Attribute {

    @inlinable public static var attribute: String { "method" }
}

extension WHATWG.HTML.Method.Attribute {

    public init(_ method: HTTPMethod) { self.rawValue = method.rawValue }

    public enum HTTPMethod: String {

        case get

        case post

        case dialog
    }
}

extension WHATWG.HTML.Method.Attribute {

    public static let get: Self = Self(.get)

    public static let post: Self = Self(.post)

    public static let dialog: Self = Self(.dialog)
}
