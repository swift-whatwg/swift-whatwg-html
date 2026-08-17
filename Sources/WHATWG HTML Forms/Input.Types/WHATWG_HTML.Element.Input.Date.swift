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

/// `<input type="date">` elements create input fields that let the user enter a date.
/// The appearance of the date picker input UI varies based on the browser and operating system.
/// The value is normalized to the format yyyy-mm-dd.
///
/// The resulting value includes the year, month, and day, but not the time.
/// The time and datetime-local input types support time and date+time input.
extension WHATWG_HTML.Element.Input {
    public struct Date: Sendable, Hashable {
        /// A string representing the date entered in the input. The date is formatted according to yyyy-mm-dd format.
        ///
        /// Note: The displayed date format will differ from the actual value — the displayed date is formatted based
        /// on the locale of the user's browser, but the parsed value is always formatted yyyy-mm-dd.
        public var value: WHATWG_HTML.Attribute.Value<String>?

        /// The latest date to accept. If the value entered into the element occurs afterward, the element
        /// fails constraint validation. If the value of the max attribute isn't a possible date string
        /// in the format yyyy-mm-dd, then the element has no maximum date value.
        ///
        /// If both the max and min attributes are set, this value must be a date string later than
        /// or equal to the one in the min attribute.
        public var max: WHATWG_HTML.Attribute.Max?

        /// The earliest date to accept. If the value entered into the element occurs beforehand, the element
        /// fails constraint validation. If the value of the min attribute isn't a possible date string
        /// in the format yyyy-mm-dd, then the element has no minimum date value.
        ///
        /// If both the max and min attributes are set, this value must be a date string earlier than
        /// or equal to the one in the max attribute.
        public var min: WHATWG_HTML.Attribute.Min?

        /// The step attribute is a number that specifies the granularity that the value must adhere to.
        /// For date inputs, the value of step is given in days.
        ///
        /// The default value of step is 1, indicating 1 day.
        public var step: WHATWG_HTML.Attribute.Step?

        public var required: WHATWG_HTML.Attribute.Required?

        /// Creates a new date input configuration
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
    /// Creates a new date input element
    public static let date: Self = .date()

    /// Creates a new date input element
    public static func date(
        name: WHATWG_HTML.Attribute.Name? = nil,
        value: WHATWG_HTML.Attribute.Value<String>? = nil,
        min: WHATWG_HTML.Attribute.Min? = nil,
        max: WHATWG_HTML.Attribute.Max? = nil,
        step: WHATWG_HTML.Attribute.Step? = nil,
        disabled: WHATWG_HTML.Attribute.Disabled? = nil,
        required: WHATWG_HTML.Attribute.Required? = nil,
        form: WHATWG_HTML.Attribute.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .date(.init(value: value, min: min, max: max, step: step, required: required))
        )
    }
}
