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

/// Represents an HTML figure element (`<figure>`), which represents self-contained content,
/// potentially with an optional caption.
///
/// The `Figure` struct provides a type-safe way to create HTML figure elements with content
/// such as images, illustrations, diagrams, code snippets, etc., that are referenced in the
/// main flow of a document, but can be moved to another part of the document without affecting the main flow.
///
/// ## Examples
///
/// ```swift
/// // Figure with an image
/// figure {
///     img(src: "image.jpg", alt: "Description")
/// }
///
/// // Figure with an image and caption
/// figure {
///     img(src: "image.jpg", alt: "Description")
///     figcaption {
///         "This is a caption"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Add a `<figcaption>` element as either first or last child to provide a caption
/// - The caption provides the accessible name for the figure
/// - Typically used for images, illustrations, diagrams, code snippets, etc.
/// - Can be moved to another part of the document without affecting the main flow
///
public struct Figure: WHATWG_HTML.Element.`Protocol` {
    /// Creates a new Figure element with the specified content.
    public init(

        )
    {

    }
}

extension Figure {
    /// The HTML tag name
    @inlinable public static var tag: String { "figure" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [.flow, .palpable]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
