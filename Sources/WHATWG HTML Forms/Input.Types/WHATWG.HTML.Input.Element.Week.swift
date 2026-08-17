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

/// `<input type="week">` elements create input fields allowing easy entry of a year plus
/// the ISO 8601 week number during that year (i.e., week 1 to 52 or 53).
extension WHATWG.HTML.Input.Element {
    public struct Week: Sendable, Hashable {
        /// A string representing the value of the week/year entered into the input
        /// in the format "yyyy-Www" (e.g., "2017-W01").
        public var value: WHATWG.HTML.Value.Attribute<String>?

        /// The id of a datalist element that provides a list of suggested values.
        public var list: WHATWG.HTML.List.Attribute?

        /// The earliest year and week to accept,
        /// in the format "yyyy-Www" (e.g., "2017-W01").
        public var min: WHATWG.HTML.Min.Attribute?

        /// The latest (time-wise) year and week number to accept,
        /// in the format "yyyy-Www" (e.g., "2017-W52").
        public var max: WHATWG.HTML.Max.Attribute?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: WHATWG.HTML.Readonly.Attribute?

        /// Specifies the granularity of week increments in weeks.
        /// Default is 1, indicating 1 week.
        public var step: WHATWG.HTML.Step.Attribute?

        /// Whether the input field is required to have a value before form submission.
        public var required: WHATWG.HTML.Required.Attribute?

        /// Creates a new week input configuration
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
    /// Creates a new week input element
    public static let week: Self = .week()

    /// Creates a new week input element
    public static func week(
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
