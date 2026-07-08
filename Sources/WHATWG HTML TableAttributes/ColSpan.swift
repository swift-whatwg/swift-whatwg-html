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

/// Represents the HTML `colspan` attribute, which specifies the number of columns a table cell should span.
///
/// Uses `Geometry<Int, Int>.Width` as the underlying type since colspan represents a horizontal span.
///
/// ## Usage Notes
///
/// - Use this attribute with `<th>` and `<td>` elements to create cells that span multiple columns
/// - The value must be a positive integer
/// - Default value is 1 if not specified
///
/// ## Examples
///
/// ```swift
/// let colSpan: ColSpan = 2
/// td.colspan(colSpan)
/// ```
///
/// ```html
/// <td colspan="2">Cell spans two columns</td>
/// ```

/// A wrapper to use Geometry<Int, Int>.Width as an HTML colspan attribute.
///
/// Since colspan represents horizontal spanning across columns,
/// it semantically aligns with width.
@dynamicMemberLookup public struct ColSpan: WHATWG_HTML.StringAttribute {

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the imagesizes attribute
    public init(value: String) { self.rawValue = value }
}

extension ColSpan {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "colspan" }
}

extension ColSpan: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) {
        self.rawValue = String(value)
    }
}
