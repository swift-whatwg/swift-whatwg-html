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
/// Extends `Geometry<Int>.Width` to serve as an HTML marginwidth attribute.
///
/// The `marginwidth` attribute specifies the horizontal margin for frame elements.
/// This is a legacy attribute primarily used with `<iframe>` elements.
///
/// ## Usage Notes
///
/// - Used on `<iframe>` elements (legacy)
/// - Specifies horizontal margin in CSS pixels
/// - Consider using CSS `padding` or `margin` instead for modern applications
///
/// ## Examples
///
/// ```swift
/// let marginWidth: MarginWidth = 10
/// iframe.marginwidth(marginWidth)
/// ```

@dynamicMemberLookup
public struct MarginWidth: WHATWG_HTML.StringAttribute, ExpressibleByIntegerLiteral {

    /// The attribute value
    public let rawValue: String

    /// Initialize with a value for the imagesizes attribute
    public init(value: String) { self.rawValue = value }

    /// Initialize with an integer literal
    public init(integerLiteral value: Int) { self.rawValue = String(value) }
}

extension MarginWidth {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "marginwidth" }
}

// extension Geometry<Int>.Width {
//    /// A wrapper to use Geometry<Int>.Width as an HTML marginwidth attribute
//    public struct Margin: WHATWG_HTML.StringAttribute {
//        /// The underlying width value
//        public var width: Geometry<Int>.Width
//
//        /// The name of the HTML attribute
//        @inlinable public static var attribute: String { "marginwidth" }
//
//        /// The raw string value
//        @inlinable public var rawValue: String { String(width.value) }
//
//        /// Initialize with a width value
//        @inlinable public init(_ width: Geometry<Int>.Width) { self.width = width }
//
//        /// Initialize with a string value
//        @inlinable public init(value: String) { self.width = Geometry<Int>.Width(Int(value) ?? 0) }
//
//        /// Initialize with an integer value
//        @inlinable public init(_ value: Int) { self.width = Geometry<Int>.Width(value) }
//    }
// }
//
// extension Geometry<Int>.Width.Margin: ExpressibleByIntegerLiteral {
//    @inlinable public init(integerLiteral value: IntegerLiteralType) { self.init(value) }
// }
//
// extension Geometry<Int>.Width.Margin: Sendable {}
// extension Geometry<Int>.Width.Margin: Equatable {}
// extension Geometry<Int>.Width.Margin: Hashable {}
//
///// Typealias for convenience - use `MarginWidth` as shorthand for `Geometry<Int>.Width.Margin`
// public typealias MarginWidth = Geometry<Int>.Width.Margin
