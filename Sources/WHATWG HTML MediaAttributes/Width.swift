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

@_exported public import Geometry_Primitives
public import WHATWG_HTML_Shared

// Required protocol conformances for StringAttribute
/// Extends `Geometry<Int>.Width` to serve as an HTML width attribute.
///
/// The `width` attribute defines the width of an element in pixels (for images, videos, and similar)
/// or in other units when combined with CSS. It is primarily used with media elements to ensure proper
/// layout before the media is loaded, preventing layout shifts.
///
/// ## Usage Notes
///
/// - Common on `<img>`, `<input type="image">`, `<video>`, `<canvas>`, and `<iframe>` elements
/// - For images, specifies the intrinsic width in CSS pixels
/// - For canvas, specifies the width in CSS pixels for the coordinate system
/// - Using both height and width helps prevent layout shifts during page load
///
/// ## Examples
///
/// ```swift
/// let width: Geometry<Int>.Width = 400
/// img.width(width)
///
/// // Or directly with integer literal
/// img.width(400)
/// ```
@dynamicMemberLookup public struct Width: WHATWG_HTML.StringAttribute, ExpressibleByIntegerLiteral {

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the imagesizes attribute
    public init(value: String) { self.rawValue = value }

    /// Initialize with an integer literal
    public init(integerLiteral value: Int) { self.rawValue = String(value) }
}

extension Width {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "width" }
}
