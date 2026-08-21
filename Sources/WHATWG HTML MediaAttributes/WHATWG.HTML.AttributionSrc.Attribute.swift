public import WHATWG_HTML_Shared

extension WHATWG.HTML.AttributionSrc {

    public struct Attribute: WHATWG.HTML.Attribute, CustomStringConvertible {

        public var value: Value

        public init() { self.value = .boolean(true) }

        public init(_ include: Bool) { self.value = .boolean(include) }

        public init(_ urls: String) { self.value = .urls(urls) }
    }
}

extension WHATWG.HTML.AttributionSrc.Attribute {

    @inlinable public static var attribute: String { "attributionsrc" }

    public enum Value: Sendable, Hashable {

        case boolean(Bool)

        case urls(String)
    }

    public var description: String {
        switch value {
        case .boolean: return ""
        case .urls(let urls): return urls
        }
    }

    public var shouldInclude: Bool {
        switch value {
        case .boolean(let include): return include
        case .urls: return true
        }
    }
}

extension WHATWG.HTML.AttributionSrc.Attribute: ExpressibleByBooleanLiteral {

    public init(booleanLiteral value: BooleanLiteralType) { self.init(value) }
}

extension WHATWG.HTML.AttributionSrc.Attribute: ExpressibleByStringLiteral {

    public init(stringLiteral value: String) { self.init(value) }
}
