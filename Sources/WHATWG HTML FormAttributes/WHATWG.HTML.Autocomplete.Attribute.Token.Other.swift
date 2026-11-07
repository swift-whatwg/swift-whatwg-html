public import WHATWG_HTML_Shared


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
