import ASCII_Primitives

extension WHATWG.HTML {

    public protocol BooleanAttribute: WHATWG.HTML.Attribute, CustomStringConvertible,
        ExpressibleByBooleanLiteral, CaseIterable, RawRepresentable
    {
        var rawValue: Bool { get }
        init(value: Bool)
    }
}

extension WHATWG.HTML.BooleanAttribute {
    public init?(rawValue value: Bool) { self = .init(value: value) }
}

extension WHATWG.HTML.BooleanAttribute {
    public init(booleanLiteral value: Bool) { self = .init(value: value) }
}

extension WHATWG.HTML.BooleanAttribute {

    public var description: String { rawValue ? "true" : "false" }
}

extension WHATWG.HTML.BooleanAttribute {
    @inlinable public static var allCases: [Self] { [true, false] }
}

extension WHATWG.HTML.BooleanAttribute {
    public subscript<T>(dynamicMember keyPath: KeyPath<Bool, T>) -> T {
        self.rawValue[keyPath: keyPath]
    }
}
