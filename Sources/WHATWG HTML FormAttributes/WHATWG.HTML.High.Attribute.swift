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

public import WHATWG_HTML_Shared

extension WHATWG.HTML.High {
    /// Represents the `high` attribute, which specifies the range that is considered to be high for a given range on a meter element.
    ///
    /// ## Usage Notes
    ///
    /// - The `high` attribute is used with the `<meter>` element.
    /// - If the value is higher than the `high` value, it's considered high value range.
    /// - If specified, the `high` value must be:
    ///   - Greater than the `low` value
    ///   - Less than or equal to the `max` value
    ///
    /// ## Examples
    ///
    /// ```html
    /// <meter value="90" min="0" max="100" low="33" high="67">90 out of 100</meter>
    /// ```
    public struct Attribute: WHATWG.HTML.Attribute, CustomStringConvertible {
        /// The attribute value
        public let value: Double

        /// Initialize with a value
        public init(_ value: Double) { self.value = value }
    }
}

extension WHATWG.HTML.High.Attribute {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "high" }
}

extension WHATWG.HTML.High.Attribute: ExpressibleByFloatLiteral {
    public init(floatLiteral value: Double) { self.value = value }
}

extension WHATWG.HTML.High.Attribute: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) { self.value = Double(value) }
}

extension WHATWG.HTML.High.Attribute {
    /// Returns the string representation of the attribute value
    public var description: String { return String(self.value) }
}
