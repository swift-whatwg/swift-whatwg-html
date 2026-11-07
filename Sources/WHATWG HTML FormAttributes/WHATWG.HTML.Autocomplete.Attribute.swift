public import WHATWG_HTML_Shared

extension WHATWG.HTML.Autocomplete {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Autocomplete.Attribute {

    @inlinable public static var attribute: String { "autocomplete" }
}

extension WHATWG.HTML.Autocomplete.Attribute: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: BooleanLiteralType) {
        switch value {
        case true: self = .on
        case false: self = .off
        }
    }
}

extension WHATWG.HTML.Autocomplete.Attribute {
    @inlinable public static var on: Self { "on" }
    @inlinable public static var off: Self { "off" }
}

extension WHATWG.HTML.Autocomplete.Attribute: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: String...) {
        self = .init(value: elements.joined(separator: " "))
    }
}

extension WHATWG.HTML.Autocomplete.Attribute {

    public init(_ tokens: [Token]) { self.init(value: tokens.map(\.value).joined(separator: " ")) }

    public init(_ tokens: Token...) { self.init(tokens) }
}

extension WHATWG.HTML.Autocomplete.Attribute {

    public static func shipping(_ detailToken: Token.Address) -> WHATWG.HTML.Autocomplete.Attribute {
        return WHATWG.HTML.Autocomplete.Attribute([
            Token.grouping(.shipping), Token.address(detailToken),
        ])
    }

    public static func billing(_ detailToken: Token.Address) -> WHATWG.HTML.Autocomplete.Attribute {
        return WHATWG.HTML.Autocomplete.Attribute([
            Token.grouping(.billing), Token.address(detailToken),
        ])
    }

    public static func contact(
        _ recipientType: RecipientType,
        _ contactToken: Token.DigitalContact
    ) -> WHATWG.HTML.Autocomplete.Attribute {
        return WHATWG.HTML.Autocomplete.Attribute([
            Token.recipientType(recipientType), Token.contact(contactToken),
        ])
    }

    public static func section(
        _ name: String,
        _ tokens: WHATWG.HTML.Autocomplete.Attribute.Token...
    ) -> WHATWG.HTML.Autocomplete.Attribute {
        var allTokens: [WHATWG.HTML.Autocomplete.Attribute.Token] = [Token.section(name)]
        allTokens.append(contentsOf: tokens)
        return WHATWG.HTML.Autocomplete.Attribute(allTokens)
    }
}

extension WHATWG.HTML.Autocomplete.Attribute {
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {

    public var value: String {
        switch self {
        case .section(let name): return "section-\(name)"
        case .grouping(let identifier): return identifier.rawValue
        case .recipientType(let type): return type.rawValue
        case .name(let token): return token.rawValue
        case .address(let token): return token.rawValue
        case .payment(let token): return token.rawValue
        case .contact(let token): return token.rawValue
        case .other(let token): return token.rawValue
        case .webauthn: return "webauthn"
        }
    }
}

extension WHATWG.HTML.Autocomplete.Attribute {
}

extension WHATWG.HTML.Autocomplete.Attribute {
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {
}
