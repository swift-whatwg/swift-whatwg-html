public import WHATWG_HTML_Shared


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
