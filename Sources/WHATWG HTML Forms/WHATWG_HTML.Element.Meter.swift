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
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG_HTML.Element {
    /// Represents an HTML meter element (`<meter>`), which displays a scalar value within a known range or a fractional value.
    ///
    /// The `Meter` struct provides a type-safe way to create HTML meter elements with various attributes
    /// like min, max, low, high, optimum, and value.
    ///
    /// ## Example
    ///
    /// ```swift
    /// meter(value: 75, min: 0, max: 100) {
    ///     "75%"
    /// }
    /// ```
    ///
    /// ```swift
    /// meter(value: 84, min: 0, low: 50, high: 80, max: 100) {
    ///     "84%"
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Use `<meter>` for measurements within a known range, like disk usage, not for progress indicators
    /// - Always specify both `min` and `max` values when the value is not in the range 0-1
    /// - Include text content that represents the same information for accessibility
    /// - Use `low` and `high` to indicate thresholds for acceptable ranges
    /// - Use `optimum` to indicate the ideal value within the range
    ///
    public struct Meter: WHATWG_HTML.Element.`Protocol` {
        /// The current numeric value, which must be between the minimum and maximum values
        public var value: WHATWG_HTML.Attribute.Value<Double>

        /// The lower numeric bound of the measured range (defaults to 0)
        public var min: WHATWG_HTML.Attribute.Min?

        /// The upper numeric bound of the measured range (defaults to 1)
        public var max: WHATWG_HTML.Attribute.Max?

        /// The upper numeric bound of the low end of the measured range
        public var low: WHATWG_HTML.Attribute.Low?

        /// The lower numeric bound of the high end of the measured range
        public var high: WHATWG_HTML.Attribute.High?

        /// The optimal numeric value, which must be within the range
        public var optimum: WHATWG_HTML.Attribute.Optimum?

        /// The ID of the form element that the meter is associated with
        public var form: WHATWG_HTML.Attribute.Form.ID?

        /// Creates a new meter element with the specified attributes.
        ///
        /// - Parameters:
        ///   - value: The current numeric value
        ///   - min: The lower bound of the range (defaults to 0)
        ///   - max: The upper bound of the range (defaults to 1)
        ///   - low: The upper bound of the low end of the range
        ///   - high: The lower bound of the high end of the range
        ///   - optimum: The optimal value within the range
        ///   - form: The ID of the form element that the meter is associated with
        public init(
            value: WHATWG_HTML.Attribute.Value<Double>,
            min: WHATWG_HTML.Attribute.Min? = nil,
            max: WHATWG_HTML.Attribute.Max? = nil,
            low: WHATWG_HTML.Attribute.Low? = nil,
            high: WHATWG_HTML.Attribute.High? = nil,
            optimum: WHATWG_HTML.Attribute.Optimum? = nil,
            form: WHATWG_HTML.Attribute.Form.ID? = nil
        ) {
            self.value = value
            self.min = min
            self.max = max
            self.low = low
            self.high = high
            self.optimum = optimum
            self.form = form

        }
    }
}

extension WHATWG_HTML.Element.Meter {
    /// The HTML tag name
    @inlinable public static var tag: String { "meter" }

    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}
