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

    public static func shipping(_ detailToken: Token.Address) -> WHATWG.HTML.Autocomplete.Attribute
    {
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

    public enum Token {

        case section(String)

        case grouping(GroupingIdentifier)

        case recipientType(RecipientType)

        case name(WHATWG.HTML.Autocomplete.Attribute.Token.Name)

        case address(Address)

        case payment(Payment)

        case contact(DigitalContact)

        case other(Other)

        case webauthn
    }
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

    public enum GroupingIdentifier: String {

        case shipping

        case billing
    }
}

extension WHATWG.HTML.Autocomplete.Attribute {

    public enum RecipientType: String {

        case home

        case work

        case mobile

        case fax

        case page
    }
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {

    public enum Name: String {

        case name

        case honorificPrefix = "honorific-prefix"

        case givenName = "given-name"

        case additionalName = "additional-name"

        case familyName = "family-name"

        case honorificSuffix = "honorific-suffix"

        case nickname

        case username

        case organizationTitle = "organization-title"

        case organization
    }
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {

    public enum Address: String {

        case streetAddress = "street-address"

        case addressLine1 = "address-line1"

        case addressLine2 = "address-line2"

        case addressLine3 = "address-line3"

        case addressLevel4 = "address-level4"

        case addressLevel3 = "address-level3"

        case addressLevel2 = "address-level2"

        case addressLevel1 = "address-level1"

        case country

        case countryName = "country-name"

        case postalCode = "postal-code"
    }
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {

    public enum Payment: String {

        case ccName = "cc-name"

        case ccGivenName = "cc-given-name"

        case ccAdditionalName = "cc-additional-name"

        case ccFamilyName = "cc-family-name"

        case ccNumber = "cc-number"

        case ccExp = "cc-exp"

        case ccExpMonth = "cc-exp-month"

        case ccExpYear = "cc-exp-year"

        case ccCsc = "cc-csc"

        case ccType = "cc-type"

        case transactionCurrency = "transaction-currency"

        case transactionAmount = "transaction-amount"
    }
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {

    public enum DigitalContact: String {

        case tel

        case telCountryCode = "tel-country-code"

        case telNational = "tel-national"

        case telAreaCode = "tel-area-code"

        case telLocal = "tel-local"

        case telLocalPrefix = "tel-local-prefix"

        case telLocalSuffix = "tel-local-suffix"

        case telExtension = "tel-extension"

        case email

        case impp
    }
}

extension WHATWG.HTML.Autocomplete.Attribute.Token {

    public enum Other: String {

        case newPassword = "new-password"

        case currentPassword = "current-password"

        case oneTimeCode = "one-time-code"

        case language

        case bday

        case bdayDay = "bday-day"

        case bdayMonth = "bday-month"

        case bdayYear = "bday-year"

        case sex

        case url

        case photo
    }
}
