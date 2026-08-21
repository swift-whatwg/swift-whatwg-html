public import WHATWG_HTML_Shared

extension WHATWG.HTML.Style {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Style.Attribute {

    @inlinable public static var attribute: String { "style" }
}

extension WHATWG.HTML.Style.Attribute {

    public init(_ declarations: [String: String]) {
        let formattedDeclarations = declarations.map { key, value in "\(key): \(value)" }.joined(
            separator: "; "
        )

        self = .init(formattedDeclarations)
    }

    public init(properties: [String: String]) { self.init(properties) }
}

extension WHATWG.HTML.Style.Attribute: ExpressibleByDictionaryLiteral {
    public init(dictionaryLiteral elements: (String, String)...) {
        let dict = Dictionary(uniqueKeysWithValues: elements)
        self.init(dict)
    }
}
