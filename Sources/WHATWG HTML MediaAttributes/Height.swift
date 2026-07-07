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
/// Extends `Geometry<Int>.Height` to serve as an HTML height attribute.
///
/// The `height` attribute defines the height of an element in pixels (for images, videos, and similar)
/// or in other units when combined with CSS. It is primarily used with media elements to ensure proper
/// layout before the media is loaded, preventing layout shifts.
///
/// ## Usage Notes
///
/// - Common on `<img>`, `<input type="image">`, `<video>`, `<canvas>`, and `<iframe>` elements
/// - For images, specifies the intrinsic height in CSS pixels
/// - For canvas, specifies the height in CSS pixels for the coordinate system
/// - Using both height and width helps prevent layout shifts during page load
///
/// ## Examples
///
/// ```swift
/// let height: Geometry<Int>.Height = 300
/// img.height(height)
///
/// // Or directly with integer literal
/// img.height(300)
/// ```

@dynamicMemberLookup public struct Height: WHATWG_HTML.StringAttribute, ExpressibleByIntegerLiteral
{
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "height" }

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the imagesizes attribute
    public init(value: String) { self.rawValue = value }

    /// Initialize with an integer literal
    public init(integerLiteral value: Int) { self.rawValue = String(value) }
}
