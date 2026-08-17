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
import WHATWG_HTML_Shared

/// `<input type="week">` elements create input fields allowing easy entry of a year plus
/// the ISO 8601 week number during that year (i.e., week 1 to 52 or 53).
extension WHATWG_HTML.Element.Input {
    public struct Week: Sendable, Hashable {
        /// A string representing the value of the week/year entered into the input
        /// in the format "yyyy-Www" (e.g., "2017-W01").
        public var value: Attribute.Value<String>?

        /// The id of a datalist element that provides a list of suggested values.
        public var list: Attribute.List?

        /// The earliest year and week to accept,
        /// in the format "yyyy-Www" (e.g., "2017-W01").
        public var min: Attribute.Min?

        /// The latest (time-wise) year and week number to accept,
        /// in the format "yyyy-Www" (e.g., "2017-W52").
        public var max: Attribute.Max?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: Attribute.Readonly?

        /// Specifies the granularity of week increments in weeks.
        /// Default is 1, indicating 1 week.
        public var step: Attribute.Step?

        /// Whether the input field is required to have a value before form submission.
        public var required: Attribute.Required?

        /// Creates a new week input configuration
        public init(
            value: Attribute.Value<String>? = nil,
            list: Attribute.List? = nil,
            min: Attribute.Min? = nil,
            max: Attribute.Max? = nil,
            readonly: Attribute.Readonly? = nil,
            step: Attribute.Step? = nil,
            required: Attribute.Required? = nil
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

extension WHATWG_HTML.Element.Input {
    /// Creates a new week input element
    public static let week: Self = .week()

    /// Creates a new week input element
    public static func week(
        name: Attribute.Name? = nil,
        value: Attribute.Value<String>? = nil,
        list: Attribute.List? = nil,
        min: Attribute.Min? = nil,
        max: Attribute.Max? = nil,
        readonly: Attribute.Readonly? = nil,
        step: Attribute.Step? = nil,
        required: Attribute.Required? = nil,
        disabled: Attribute.Disabled? = nil,
        form: WHATWG_HTML.Attribute.Form.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .week(
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
