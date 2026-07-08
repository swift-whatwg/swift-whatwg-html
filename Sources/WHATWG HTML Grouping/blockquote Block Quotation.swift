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

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

/// Represents an HTML blockquote element (`<blockquote>`), which indicates that the enclosed text
/// is an extended quotation.
///
/// The `BlockQuote` struct provides a type-safe way to create HTML block quotations with an optional
/// citation source URL.
///
/// ## Example
///
/// ```swift
/// blockquote(cite: "https://www.example.com/source") {
///     p {
///         "Words can be like X-rays, if you use them properly—they'll go through anything. You read and you're pierced."
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Attribution for the quotation should be placed outside the blockquote element
/// - Use the `cite` attribute to reference the source document or message
/// - For shorter inline quotes, use the `q` element instead
/// - The content is typically rendered visually by indentation
///
public struct BlockQuote: WHATWG_HTML.Element.`Protocol` {
    /// A URL that designates a source document or message for the quoted information
    public var cite: Cite?

    /// Creates a new BlockQuote element with the specified citation source and content.
    ///
    /// - Parameters:
    ///   - cite: A URL that designates the source document for the quotation
    public init(cite: Cite? = nil) { self.cite = cite }
}

extension BlockQuote {
    /// The HTML tag name
    @inlinable public static var tag: String { "blockquote" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [.flow, .palpable]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
