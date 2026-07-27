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

/// Represents an HTML inline quotation element (`<q>`), which indicates that the enclosed text is a short inline quotation.
///
/// The `InlineQuotation` struct provides a type-safe way to create HTML inline quotations with various attributes.
/// Most modern browsers implement this by surrounding the text in quotation marks.
/// This element is intended for short quotations that don't require paragraph breaks; for long quotations use the `<blockquote>` element.
///
/// ## Example
///
/// ```swift
/// q(cite: "https://www.mozilla.org/en-US/about/history/details/") {
///     "Firefox 1.0 was released in 2004 and became a big success."
/// }
/// ```
///
/// ## Best Practices
///
/// - Use for short inline quotations that don't require paragraph breaks
/// - For longer quotations that require paragraph breaks, use the `<blockquote>` element
/// - Use the `cite` attribute to specify the source URL of the quotation
/// - Consider using the `<cite>` element in conjunction with `<q>` to attribute the source
///
public struct InlineQuotation: WHATWG_HTML.Element.`Protocol` {

    /// The URL that designates a source document or message for the information quoted
    /// This attribute is intended to point to information explaining the context or the reference for the quote
    public var cite: WHATWG_HTML_GlobalAttributes.Cite?

    /// Creates a new InlineQuotation element with the specified attributes.
    ///
    /// - Parameters:
    ///   - cite: The URL that designates a source document or message for the information quoted
    public init(cite: WHATWG_HTML_GlobalAttributes.Cite? = nil) {
        self.cite = cite

    }
}

extension InlineQuotation {
    /// The HTML tag name
    @inlinable public static var tag: String { "q" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.phrasing]))
}
