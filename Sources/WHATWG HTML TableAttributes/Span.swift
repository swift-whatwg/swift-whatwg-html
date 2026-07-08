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

/// An attribute that specifies the number of columns a `<col>` or `<colgroup>` element should span.
///
/// Uses `Geometry<Int>.Width` as the underlying type since span represents horizontal column count.
///
/// The `span` attribute defines the number of consecutive columns the element spans.
/// This attribute is primarily used with `<col>` and `<colgroup>` elements to define
/// properties for a group of columns in a table.
///
/// ## Usage Notes
///
/// - Used with `<col>` and `<colgroup>` elements in tables
/// - Value must be a positive integer greater than 0
/// - Default value is 1 if not specified
/// - In `<colgroup>`, the `span` attribute specifies how many columns the group contains
/// - In `<col>`, the `span` attribute specifies how many consecutive columns should share the same properties
///
/// ## Best Practices
///
/// - Use `span` to efficiently apply styles to multiple table columns
/// - For complex layouts, consider using individual `<col>` elements for more precise control
/// - Verify the total columns spanned matches the actual table structure
///
/// ## Examples
///
/// ```swift
/// let span: Span = 3
/// col.span(span)
/// ```
///
/// ```html
/// <col span="3" style="background-color: yellow;" />
/// ```

/// A wrapper to use Geometry<Int>.Width as an HTML span attribute for col/colgroup elements.
///
/// Since span on col/colgroup represents the number of columns (horizontal),
/// it semantically aligns with width.
public struct Span: WHATWG_HTML.StringAttribute, ExpressibleByIntegerLiteral {
    /// The underlying width value representing column count
    public var width: Int

    /// Initialize with a string value
    @inlinable public init(value: String) {
        let intValue = Int(value) ?? 1
        precondition(intValue > 0, "Span value must be a positive integer")
        self.width = intValue
    }

    /// Initialize with an integer value
    @inlinable public init(_ value: Int) {
        precondition(value > 0, "Span value must be a positive integer")
        self.width = value
    }

    /// Initialize with an integer literal
    @inlinable public init(integerLiteral value: Int) {
        precondition(value > 0, "Span value must be a positive integer")
        self.width = value
    }
}

extension Span {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "span" }

    /// The raw string value
    @inlinable public var rawValue: String { width.description }
}
