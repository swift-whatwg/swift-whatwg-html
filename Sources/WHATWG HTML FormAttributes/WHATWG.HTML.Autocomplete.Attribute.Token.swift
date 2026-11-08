public import WHATWG_HTML_Shared

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
