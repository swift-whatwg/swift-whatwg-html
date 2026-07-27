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

/// Represents an HTML strikethrough element (`<s>`), which renders text with a strikethrough line.
///
/// The `Strikethrough` struct provides a type-safe way to create HTML elements that indicate content
/// that is no longer relevant or accurate.
///
/// ## Example
///
/// ```swift
/// s {
///     "This product is no longer available."
/// }
/// ```
///
/// ## Best Practices
///
/// - Use `<s>` for content that is no longer relevant or accurate
/// - Do not use for indicating document edits - use `<del>` and `<ins>` elements instead
/// - Consider adding CSS for screen readers to improve accessibility
///
/// ## Accessibility Notes
///
/// The strikethrough element is not announced by most screen readers by default.
/// You can use CSS `::before` and `::after` pseudo-elements with the `content` property
/// to make it announced by screen readers when necessary.
///
public struct Strikethrough: WHATWG_HTML.Element.`Protocol` {

    /// Creates a new Strikethrough element.
    public init(

        )
    {

    }
}

extension Strikethrough {
    /// The HTML tag name
    @inlinable public static var tag: String { "s" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}
