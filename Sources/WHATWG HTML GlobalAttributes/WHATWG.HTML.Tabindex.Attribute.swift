public import WHATWG_HTML_Shared

extension WHATWG.HTML.Tabindex {

    public struct Attribute: WHATWG.HTML.Attribute {

        public var value: Int

        public init(_ value: Int) { self.value = value }
    }
}

extension WHATWG.HTML.Tabindex.Attribute {

    @inlinable public static var attribute: String { "tabindex" }
}

extension WHATWG.HTML.Tabindex.Attribute {

    public static let notTabbable = WHATWG.HTML.Tabindex.Attribute(-1)

    public static let inDocumentOrder = WHATWG.HTML.Tabindex.Attribute(0)
}

extension WHATWG.HTML.Tabindex.Attribute: CustomStringConvertible {

    public var description: String { return String(self.value) }
}
