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

/// Represents the HTML `reversed` attribute, which specifies that the items of a list are in reverse order.
///
/// This Boolean attribute is used with the `<ol>` element to display list items in descending order
/// (from high to low).
///
/// ## Examples
///
/// ```html
/// <ol reversed>
///   <li>This will be item #3</li>
///   <li>This will be item #2</li>
///   <li>This will be item #1</li>
/// </ol>
/// ```
@dynamicMemberLookup public struct Reversed: WHATWG_HTML.BooleanAttribute {
    /// The attribute value
    public var rawValue: Bool

    /// Initialize with a boolean value
    public init(value: Bool = true) { self.rawValue = value }
}

extension Reversed {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "reversed" }
}
