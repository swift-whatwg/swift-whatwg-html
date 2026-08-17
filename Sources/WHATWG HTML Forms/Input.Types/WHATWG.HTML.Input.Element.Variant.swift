// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    /// Represents the possible types for HTML input elements.
    ///
    /// `InputType` encapsulates all standard HTML input types as defined
    /// in the HTML specification. Using this enum ensures type safety when
    /// specifying input types in your HTML.
    ///
    /// Example:
    /// ```swift
    /// input()
    ///     .attribute("type", InputType.email.rawValue)
    ///     .attribute("placeholder", "Enter your email")
    /// ```
    ///
    /// - Note: These values correspond directly to the values used in the
    ///   `type` attribute of HTML input elements.
    public enum Variant: Sendable, Hashable {

        /// A push button with no default behavior displaying the value of the value attribute, empty by default
        case button(WHATWG.HTML.Input.Element.Button)

        /// A check box allowing single values to be selected/deselected.
        case checkbox(WHATWG.HTML.Input.Element.Checkbox)

        /// A control for specifying a color; opening a color picker when active in supporting browsers.
        case color(WHATWG.HTML.Input.Element.Color)

        /// A control for entering a date (year, month, and day, with no time). Opens a date picker or numeric wheels for year, month, day when active in supporting browsers.
        case date(WHATWG.HTML.Input.Element.Date)

        /// A control for entering a date and time, with no time zone. Opens a date picker or numeric wheels for date- and time-components when active in supporting browsers.
        case datetimeLocal(WHATWG.HTML.Input.Element.DatetimeLocal)

        /// A field for editing an email address. Looks like a text input, but has validation parameters and relevant keyboard in supporting browsers and devices with dynamic keyboards.
        case email(WHATWG.HTML.Input.Element.Email)

        /// A control that lets the user select a file. Use the accept attribute to define the types of files that the control can select.
        case file(WHATWG.HTML.Input.Element.File)

        /// A control that is not displayed but whose value is submitted to the server. There is an example in the next column, but it's hidden!
        case hidden(WHATWG.HTML.Input.Element.Hidden)

        /// A graphical submit button. Displays an image defined by the src attribute. The alt attribute displays if the image src is missing.
        case image(WHATWG.HTML.Input.Element.Image)

        /// A control for entering a month and year, with no time zone.
        case month(WHATWG.HTML.Input.Element.Month)

        /// A control for entering a number. Displays a spinner and adds default validation. Displays a numeric keypad in some devices with dynamic keypads.
        case number(WHATWG.HTML.Input.Element.Number)

        /// A single-line text field whose value is obscured. Will alert user if site is not secure.
        case password(WHATWG.HTML.Input.Element.Password)

        /// A radio button, allowing a single value to be selected out of multiple choices with the same name value.
        case radio(WHATWG.HTML.Input.Element.Radio)

        /// A control for entering a number whose exact value is not important. Displays as a range widget defaulting to the middle value. Used in conjunction min and max to define the range of acceptable values.
        case range(WHATWG.HTML.Input.Element.Range)

        /// A button that resets the contents of the form to default values. Not recommended.
        case reset(WHATWG.HTML.Input.Element.Reset)

        /// A single-line text field for entering search strings. Line-breaks are automatically removed from the input value. May include a delete icon in supporting browsers that can be used to clear the field. Displays a search icon instead of enter key on some devices with dynamic keypads.
        case search(WHATWG.HTML.Input.Element.Search)

        /// A button that submits the form.
        case submit(WHATWG.HTML.Input.Element.Submit)

        /// A control for entering a telephone number. Displays a telephone keypad in some devices with dynamic keypads.
        case tel(WHATWG.HTML.Input.Element.Tel)

        /// The default value. A single-line text field. Line-breaks are automatically removed from the input value.
        case text(WHATWG.HTML.Input.Element.Text)

        /// A control for entering a time value with no time zone.
        case time(WHATWG.HTML.Input.Element.Time)

        /// A field for entering a URL. Looks like a text input, but has validation parameters and relevant keyboard in supporting browsers and devices with dynamic keyboards.
        case url(WHATWG.HTML.Input.Element.Url)

        /// A control for entering a date consisting of a week-year number and a week number with no time zone.
        case week(WHATWG.HTML.Input.Element.Week)

        /// A control for entering a date and time (hour, minute, second, and fraction of a second) based on UTC time zone.
        @available(*, deprecated) case datetime
    }
}

extension WHATWG.HTML.Input.Element.Variant {
    /// Returns the string value used for the HTML input's "type" attribute.
    ///
    /// This property maps each input variant to its corresponding HTML input type string.
    /// For example, `.datetimeLocal` becomes "datetime-local" in the rendered HTML.
    ///
    /// - Returns: A string representation of the input type for use in HTML
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
