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
extension WHATWG.HTML.Input.Element {
    public struct Time: Sendable, Hashable {
        /// A string representing a time in 24-hour format (HH:mm or HH:mm:ss).
        /// Example: "13:30" for 1:30 PM.
        public var value: WHATWG.HTML.Value.Attribute<String>?

        /// The id of a datalist element providing suggested times.
        public var list: WHATWG.HTML.List.Attribute?

        /// A string indicating the earliest time to accept (e.g., "09:00").
        public var min: WHATWG.HTML.Min.Attribute?

        /// A string indicating the latest time to accept (e.g., "18:00").
        public var max: WHATWG.HTML.Max.Attribute?

        /// A Boolean attribute which, if present, means this field cannot be edited by the user.
        public var readonly: WHATWG.HTML.Readonly.Attribute?

        /// Specifies the granularity of time increments in seconds.
        /// Default is 60 (1 minute), but can be set to other values to show seconds.
        public var step: WHATWG.HTML.Step.Attribute?

        /// Whether the input field is required to have a value before form submission.
        public var required: WHATWG.HTML.Required.Attribute?

        /// Creates a new time input configuration
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
            self.min = min
            self.max = max
            self.readonly = readonly
            self.step = step
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {
    /// Creates a new time input element
    public static let time: Self = .time()

    /// Creates a new time input element
    public static func time(
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
