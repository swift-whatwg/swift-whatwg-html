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

import Geometry_Primitives
public import WHATWG_HTML_Shared

/// Represents the HTML `rowspan` attribute, which specifies the number of rows a cell should span.
///
/// Uses `Geometry<Int>.Height` as the underlying type since rowspan represents a vertical span.
///
/// ## Usage Notes
///
/// - Used with `<td>` and `<th>` elements in tables
/// - Value must be a positive integer
/// - Default value is 1 if not specified
///
/// ## Examples
///
/// ```swift
/// let rowSpan: RowSpan = 2
/// td.rowspan(rowSpan)
/// ```
///
/// ```html
/// <td rowspan="2">This cell spans two rows</td>
/// ```
/// A wrapper to use Geometry<Int>.Height as an HTML rowspan attribute.
///
/// Since rowspan represents vertical spanning across rows,
/// it semantically aligns with height.
public struct RowSpan: WHATWG_HTML.StringAttribute {
    /// The underlying height value representing row span count
    public var height: Int

    /// Initialize with a string value
    @inlinable public init(value: String) {
        self.height = .init(value) ?? 1
    }

    /// Initialize with an integer value
    @inlinable public init(_ value: Int) {
        self.height = value
    }
}

extension RowSpan {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "rowspan" }

    /// The raw string value
    @inlinable public var rawValue: String { String(height) }
}

extension RowSpan: ExpressibleByIntegerLiteral {
    @inlinable public init(integerLiteral value: Int) {
        self.height = value
    }
}
