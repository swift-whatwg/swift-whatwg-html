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

/// `<input type="month">` elements create input fields that let the user enter a month and year.
/// The value is a string in the format YYYY-MM, where YYYY is the four-digit year and MM is the month number.
extension WHATWG.HTML.Element.Input {
    public struct Month: Sendable, Hashable {
        /// A string representing the value of the month and year entered into the input,
        /// in the form YYYY-MM (e.g., "2023-07").
        public var value: WHATWG.HTML.Attribute.Value<String>?

        /// The id of a datalist element that provides a list of suggested values.
        public var list: WHATWG.HTML.Attribute.List?

        /// The earliest year and month to accept (e.g., "2000-01").
        public var min: WHATWG.HTML.Attribute.Min?

        /// The latest year and month to accept (e.g., "2023-12").
        public var max: WHATWG.HTML.Attribute.Max?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: WHATWG.HTML.Attribute.Readonly?

        /// Specifies the granularity of month increments.
        /// Default is 1, indicating 1 month.
        public var step: WHATWG.HTML.Attribute.Step?

        /// Whether the input field is required to have a value before form submission.
        public var required: WHATWG.HTML.Attribute.Required?

        /// Creates a new month input configuration
        public init(
            value: WHATWG.HTML.Attribute.Value<String>? = nil,
            list: WHATWG.HTML.Attribute.List? = nil,
            min: WHATWG.HTML.Attribute.Min? = nil,
            max: WHATWG.HTML.Attribute.Max? = nil,
            readonly: WHATWG.HTML.Attribute.Readonly? = nil,
            step: WHATWG.HTML.Attribute.Step? = nil,
            required: WHATWG.HTML.Attribute.Required? = nil
        ) {
            self.value = value
            self.list = list
            self.max = max
            self.min = min
            self.readonly = readonly
            self.step = step
            self.required = required
        }
    }
}

extension WHATWG.HTML.Element.Input {
    /// Creates a new month input element
    public static let month: Self = .month()

    /// Creates a new month input element
    public static func month(
        name: WHATWG.HTML.Attribute.Name? = nil,
        value: WHATWG.HTML.Attribute.Value<String>? = nil,
        list: WHATWG.HTML.Attribute.List? = nil,
        min: WHATWG.HTML.Attribute.Min? = nil,
        max: WHATWG.HTML.Attribute.Max? = nil,
        readonly: WHATWG.HTML.Attribute.Readonly? = nil,
        step: WHATWG.HTML.Attribute.Step? = nil,
        required: WHATWG.HTML.Attribute.Required? = nil,
        disabled: WHATWG.HTML.Attribute.Disabled? = nil,
        form: WHATWG.HTML.Attribute.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .month(
                .init(
                    value: value,
                    list: list,
                    min: min,
                    max: max,
                    readonly: readonly,
                    step: step,
                    required: required
                )
            )
        )
    }
}
