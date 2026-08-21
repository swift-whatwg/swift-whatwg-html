import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.`Type` {

    public enum Attribute: String, CustomStringConvertible {

        case button

        case checkbox

        case color

        case date

        case datetimeLocal = "datetime-local"

        case email

        case file

        case hidden

        case image

        case month

        case number

        case password

        case radio

        case range

        case reset

        case search

        case submit

        case tel

        case text

        case time

        case url

        case week

        @available(*, deprecated) case datetime
    }
}

extension WHATWG.HTML.Input.`Type`.Attribute {

    public var description: String { self.rawValue }
}
