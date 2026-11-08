public import WHATWG_HTML_Shared

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
