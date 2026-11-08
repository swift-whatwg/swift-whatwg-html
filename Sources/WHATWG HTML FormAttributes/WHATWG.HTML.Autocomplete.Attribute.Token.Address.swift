public import WHATWG_HTML_Shared


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
