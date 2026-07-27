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

/// Represents an HTML subscript element (`<sub>`), which specifies inline text that should
/// be displayed as subscript for typographical reasons.
///
/// Subscripts are typically rendered with a lowered baseline using smaller text.
///
/// ## Example
///
/// ```swift
/// sub {
///     "2"
/// }
/// ```
///
/// ## Usage Notes
///
/// - Use `<sub>` only for typographical reasons, not solely for presentation
/// - Appropriate use cases include:
///   - Footnote numbers
///   - Mathematical variable subscripts
///   - Chemical formulas (e.g., H₂O)
/// - For presentational subscripts, use CSS (e.g., `vertical-align: sub`)
///
public struct Subscript: WHATWG_HTML.Element.`Protocol` {

    /// Creates a new subscript element.
    public init(

        )
    {

    }
}

extension Subscript {
    /// The HTML tag name
    @inlinable public static var tag: String { "sub" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}
