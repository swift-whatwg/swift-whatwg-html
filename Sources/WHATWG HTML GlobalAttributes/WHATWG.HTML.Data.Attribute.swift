public import WHATWG_HTML_Shared

extension WHATWG.HTML.Data {

    public struct Attribute: WHATWG.HTML.Attribute {

        public var name: String

        public var value: String

        public init(name: String, value: String) {
            self.name = name
            self.value = value
        }

        public init(name: some CustomStringConvertible, value: some CustomStringConvertible) {
            self.name = name.description
            self.value = value.description
        }
    }
}

extension WHATWG.HTML.Data.Attribute {

    @inlinable public static var attribute: String { "data" }
    @inlinable public static var prefix: String { "data-" }

    public var attributeName: String { return "\(Self.prefix)\(name)" }
}

extension WHATWG.HTML.Data.Attribute: CustomStringConvertible {

    public var description: String { return self.value }
}
