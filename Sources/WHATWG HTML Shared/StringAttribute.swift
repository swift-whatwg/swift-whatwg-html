extension WHATWG.HTML {

    public protocol StringAttribute: WHATWG.HTML.Attribute, CustomStringConvertible,
        ExpressibleByStringLiteral,
        ExpressibleByStringInterpolation, RawRepresentable
    {
        var rawValue: String { get }
        init(value: String)
    }
}

extension WHATWG.HTML.StringAttribute {
    public init?(rawValue value: String) { self = .init(value: value) }
}

extension WHATWG.HTML.StringAttribute {
    public init(_ value: String) { self = .init(value: value) }
}

extension WHATWG.HTML.StringAttribute {
    public init(stringLiteral value: String) { self = .init(value: value) }
}

extension WHATWG.HTML.StringAttribute {

    public var description: String { rawValue }
}

extension WHATWG.HTML.StringAttribute {
    public subscript<T>(dynamicMember keyPath: KeyPath<String, T>) -> T {
        self.rawValue[keyPath: keyPath]
    }
}
