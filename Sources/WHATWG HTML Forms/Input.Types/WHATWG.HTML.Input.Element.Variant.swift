import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {

    public enum Variant: Sendable, Hashable {

        case button(WHATWG.HTML.Input.Element.Button)

        case checkbox(WHATWG.HTML.Input.Element.Checkbox)

        case color(WHATWG.HTML.Input.Element.Color)

        case date(WHATWG.HTML.Input.Element.Date)

        case datetimeLocal(WHATWG.HTML.Input.Element.DatetimeLocal)

        case email(WHATWG.HTML.Input.Element.Email)

        case file(WHATWG.HTML.Input.Element.File)

        case hidden(WHATWG.HTML.Input.Element.Hidden)

        case image(WHATWG.HTML.Input.Element.Image)

        case month(WHATWG.HTML.Input.Element.Month)

        case number(WHATWG.HTML.Input.Element.Number)

        case password(WHATWG.HTML.Input.Element.Password)

        case radio(WHATWG.HTML.Input.Element.Radio)

        case range(WHATWG.HTML.Input.Element.Range)

        case reset(WHATWG.HTML.Input.Element.Reset)

        case search(WHATWG.HTML.Input.Element.Search)

        case submit(WHATWG.HTML.Input.Element.Submit)

        case tel(WHATWG.HTML.Input.Element.Tel)

        case text(WHATWG.HTML.Input.Element.Text)

        case time(WHATWG.HTML.Input.Element.Time)

        case url(WHATWG.HTML.Input.Element.Url)

        case week(WHATWG.HTML.Input.Element.Week)

        @available(*, deprecated) case datetime
    }
}

extension WHATWG.HTML.Input.Element.Variant {

    public var label: String {
        switch self {
        case .button: "button"
        case .checkbox: "checkbox"
        case .color: "color"
        case .date: "date"
        case .datetimeLocal: "datetime-local"
        case .email: "email"
        case .file: "file"
        case .hidden: "hidden"
        case .image: "image"
        case .month: "month"
        case .number: "number"
        case .password: "password"
        case .radio: "radio"
        case .range: "range"
        case .reset: "reset"
        case .search: "search"
        case .submit: "submit"
        case .tel: "tel"
        case .text: "text"
        case .time: "time"
        case .url: "url"
        case .week: "week"
        case .datetime: "datetime"
        }
    }
}
