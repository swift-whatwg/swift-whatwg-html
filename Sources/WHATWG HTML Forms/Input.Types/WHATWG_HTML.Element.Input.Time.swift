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

/// `<input type="time">` elements create input fields designed to let the user easily enter a time (hours and minutes, and optionally seconds).
/// The value is always a 24-hour HH:mm or HH:mm:ss formatted time, with leading zeros, regardless of the UI's input format.
extension WHATWG_HTML.Element.Input {
    public struct Time: Sendable, Hashable {
        /// A string representing a time in 24-hour format (HH:mm or HH:mm:ss).
        /// Example: "13:30" for 1:30 PM.
        public var value: Attribute.Value<String>?

        /// The id of a datalist element providing suggested times.
        public var list: Attribute.List?

        /// A string indicating the earliest time to accept (e.g., "09:00").
        public var min: Attribute.Min?

        /// A string indicating the latest time to accept (e.g., "18:00").
        public var max: Attribute.Max?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: Attribute.Readonly?

        /// Specifies the granularity of time increments in seconds.
        /// Default is 60 (1 minute), but can be set to other values to show seconds.
        public var step: Attribute.Step?

        /// Whether the input field is required to have a value before form submission.
        public var required: Attribute.Required?

        /// Creates a new time input configuration
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
            self.min = min
            self.max = max
            self.readonly = readonly
            self.step = step
            self.required = required
        }
    }
}

extension WHATWG_HTML.Element.Input {
    /// Creates a new time input element
    public static let time: Self = .time()

    /// Creates a new time input element
    public static func time(
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
