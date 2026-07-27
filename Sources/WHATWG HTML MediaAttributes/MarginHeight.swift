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

// Required protocol conformances for StringAttribute
/// Extends `Geometry<Int>.Height` to serve as an HTML marginheight attribute.
///
/// The `marginheight` attribute specifies the vertical margin for frame elements.
/// This is a legacy attribute primarily used with `<iframe>` elements.
///
/// ## Usage Notes
///
/// - Used on `<iframe>` elements (legacy)
/// - Specifies vertical margin in CSS pixels
/// - Consider using CSS `padding` or `margin` instead for modern applications
///
/// ## Examples
///
/// ```swift
/// let marginHeight: MarginHeight = 10
/// iframe.marginheight(marginHeight)
/// ```
@dynamicMemberLookup
public struct MarginHeight: WHATWG_HTML.StringAttribute, ExpressibleByIntegerLiteral {

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the imagesizes attribute
    public init(value: String) { self.rawValue = value }

    /// Initialize with an integer literal
    public init(integerLiteral value: Int) { self.rawValue = String(value) }
}

extension MarginHeight {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "marginheight" }
}
