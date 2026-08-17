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

/// `<input type="time">` elements create input fields designed to let the user easily enter a time (hours and minutes, and optionally seconds).
/// The value is always a 24-hour HH:mm or HH:mm:ss formatted time, with leading zeros, regardless of the UI's input format.
extension WHATWG.HTML.Element.Input {
    public struct Time: Sendable, Hashable {
        /// A string representing a time in 24-hour format (HH:mm or HH:mm:ss).
        /// Example: "13:30" for 1:30 PM.
        public var value: WHATWG.HTML.Attribute.Value<String>?

        /// The id of a datalist element providing suggested times.
        public var list: WHATWG.HTML.Attribute.List?

        /// A string indicating the earliest time to accept (e.g., "09:00").
        public var min: WHATWG.HTML.Attribute.Min?

        /// A string indicating the latest time to accept (e.g., "18:00").
        public var max: WHATWG.HTML.Attribute.Max?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: WHATWG.HTML.Attribute.Readonly?

        /// Specifies the granularity of time increments in seconds.
        /// Default is 60 (1 minute), but can be set to other values to show seconds.
        public var step: WHATWG.HTML.Attribute.Step?

        /// Whether the input field is required to have a value before form submission.
        public var required: WHATWG.HTML.Attribute.Required?

        /// Creates a new time input configuration
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
            self.min = min
            self.max = max
            self.readonly = readonly
            self.step = step
            self.required = required
        }
    }
}

extension WHATWG.HTML.Element.Input {
    /// Creates a new time input element
    public static let time: Self = .time()

    /// Creates a new time input element
    public static func time(
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
            type: .time(
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
