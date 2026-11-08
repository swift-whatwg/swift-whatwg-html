public import WHATWG_HTML_Shared

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
