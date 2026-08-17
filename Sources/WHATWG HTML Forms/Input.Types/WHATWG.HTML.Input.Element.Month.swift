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
extension WHATWG.HTML.Input.Element {
    public struct Month: Sendable, Hashable {
        /// A string representing the value of the month and year entered into the input,
        /// in the form YYYY-MM (e.g., "2023-07").
        public var value: WHATWG.HTML.Value.Attribute<String>?

        /// The id of a datalist element that provides a list of suggested values.
        public var list: WHATWG.HTML.List.Attribute?

        /// The earliest year and month to accept (e.g., "2000-01").
        public var min: WHATWG.HTML.Min.Attribute?

        /// The latest year and month to accept (e.g., "2023-12").
        public var max: WHATWG.HTML.Max.Attribute?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: WHATWG.HTML.Readonly.Attribute?

        /// Specifies the granularity of month increments.
        /// Default is 1, indicating 1 month.
        public var step: WHATWG.HTML.Step.Attribute?

        /// Whether the input field is required to have a value before form submission.
        public var required: WHATWG.HTML.Required.Attribute?

        /// Creates a new month input configuration
        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            list: WHATWG.HTML.List.Attribute? = nil,
            min: WHATWG.HTML.Min.Attribute? = nil,
            max: WHATWG.HTML.Max.Attribute? = nil,
            readonly: WHATWG.HTML.Readonly.Attribute? = nil,
            step: WHATWG.HTML.Step.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
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

extension WHATWG.HTML.Input.Element {
    /// Creates a new month input element
    public static let month: Self = .month()

    /// Creates a new month input element
    public static func month(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        list: WHATWG.HTML.List.Attribute? = nil,
        min: WHATWG.HTML.Min.Attribute? = nil,
        max: WHATWG.HTML.Max.Attribute? = nil,
        readonly: WHATWG.HTML.Readonly.Attribute? = nil,
        step: WHATWG.HTML.Step.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
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
