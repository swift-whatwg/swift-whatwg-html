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

public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

/// `<input type="datetime-local">` elements create input controls that let the user easily enter both a date
/// and a time, including the year, month, and day as well as the time in hours and minutes.
///
/// The control's UI varies in general from browser to browser. The control is intended to represent a local
/// date and time, not necessarily the user's local date and time. In other words, the input allows any valid
/// combination of year, month, day, hour, and minute—even if such a combination is invalid in the user's
/// local time zone (such as the one hour within a daylight saving time spring-forward transition gap).
extension WHATWG_HTML.Element.Input {
    public struct DatetimeLocal: Sendable, Hashable {
        /// A string representing the value of the date and time entered into the input.
        /// The format is YYYY-MM-DDTHH:mm.
        ///
        /// Note: The displayed date and time formats differ from the actual value; the displayed date
        /// and time are formatted according to the user's locale as reported by their operating system,
        /// whereas the date/time value is always formatted YYYY-MM-DDTHH:mm.
        public var value: WHATWG_HTML.Attribute.Value<String>?

        /// The latest date and time to accept. If the value entered into the element is later than this
        /// timestamp, the element fails constraint validation. If the value of the max attribute isn't
        /// a valid string that follows the format YYYY-MM-DDTHH:mm, then the element has no maximum value.
        ///
        /// This value must specify a date string later than or equal to the one specified by the min attribute.
        public var max: WHATWG_HTML.Attribute.Max?

        /// The earliest date and time to accept; timestamps earlier than this will cause the element to
        /// fail constraint validation. If the value of the min attribute isn't a valid string that follows
        /// the format YYYY-MM-DDTHH:mm, then the element has no minimum value.
        ///
        /// This value must specify a date string earlier than or equal to the one specified by the max attribute.
        public var min: WHATWG_HTML.Attribute.Min?

        /// The step attribute is a number that specifies the granularity that the value must adhere to.
        /// For datetime-local inputs, the value of step is given in seconds, with a scaling factor of 1000
        /// (since the underlying numeric value is in milliseconds).
        ///
        /// The default value of step is 60, indicating 60 seconds (or 1 minute, or 60,000 milliseconds).
        public var step: WHATWG_HTML.Attribute.Step?

        public var required: WHATWG_HTML.Attribute.Required?

        /// Creates a new datetime-local input configuration
        public init(
            value: WHATWG_HTML.Attribute.Value<String>? = nil,
            min: WHATWG_HTML.Attribute.Min? = nil,
            max: WHATWG_HTML.Attribute.Max? = nil,
            step: WHATWG_HTML.Attribute.Step? = nil,
            required: WHATWG_HTML.Attribute.Required? = nil
        ) {
            self.value = value
            self.min = min
            self.max = max
            self.step = step
            self.required = required
        }
    }
}

extension WHATWG_HTML.Element.Input {

    /// Creates a new datetimeLocal input element
    public static let datetimeLocal: Self = .datetimeLocal()

    /// Creates a new datetime-local input element
    public static func datetimeLocal(
        name: WHATWG_HTML.Attribute.Name? = nil,
        value: WHATWG_HTML.Attribute.Value<String>? = nil,
        min: WHATWG_HTML.Attribute.Min? = nil,
        max: WHATWG_HTML.Attribute.Max? = nil,
        step: WHATWG_HTML.Attribute.Step? = nil,
        disabled: WHATWG_HTML.Attribute.Disabled? = nil,
        form: WHATWG_HTML.Attribute.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .datetimeLocal(.init(value: value, min: min, max: max, step: step))
        )
    }
}
