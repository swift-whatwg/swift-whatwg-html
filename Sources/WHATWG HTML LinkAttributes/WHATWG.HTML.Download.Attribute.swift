public import WHATWG_HTML_Shared

extension WHATWG.HTML.Download {

    public struct Attribute: WHATWG.HTML.Attribute, CustomStringConvertible {

        public var value: Value

        public init() { self.value = .boolean(true) }

        public init(_ include: Bool) { self.value = .boolean(include) }

        public init(_ filename: String) { self.value = .withFilename(filename) }
    }
}

extension WHATWG.HTML.Download.Attribute {

    @inlinable public static var attribute: String { "download" }

    public enum Value: Sendable, Hashable {

        case boolean(Bool)

        case withFilename(String)
    }

    public var description: String {
        switch value {
        case .boolean: return ""
        case .withFilename(let filename): return filename
        }
    }

    public var shouldInclude: Bool {
        switch value {
        case .boolean(let include): return include
        case .withFilename: return true
        }
    }
}

extension WHATWG.HTML.Download.Attribute: ExpressibleByBooleanLiteral {

    public init(booleanLiteral value: BooleanLiteralType) { self.init(value) }
}

extension WHATWG.HTML.Download.Attribute: ExpressibleByStringLiteral {

    public init(stringLiteral value: String) { self.init(value) }
}
