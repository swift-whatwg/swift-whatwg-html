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

public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_ScriptAttributes
public import WHATWG_HTML_Shared

/// Represents an HTML `<embed>` element, which embeds external content at the specified point in the document.
///
/// The `Embed` struct provides a type-safe way to create HTML embed elements with various attributes.
/// This content is provided by an external application or other source of interactive content such as a browser plug-in.
///
/// ## Example
///
/// ```swift
/// embed(
///     type: "video/mp4",
///     src: "video.mp4",
///     width: 640,
///     height: 480
/// )
/// ```
///
/// ## Best Practices
///
/// - Use the `title` attribute to provide information about the embedded content for screen readers.
/// - Keep in mind that most modern browsers have deprecated and removed support for browser plug-ins,
///   so relying upon `<embed>` is generally not wise for broad browser compatibility.
/// - Consider using more modern elements like `<video>`, `<audio>`, or `<iframe>` when possible.
///
public struct Embed: WHATWG_HTML.Element.`Protocol` {
    /// The URL of the resource being embedded
    public var src: Src?

    /// The MIME type to use to select the plug-in to instantiate
    public var type: ScriptType?

    /// The displayed height of the resource in CSS pixels
    public var height: Height?

    /// The displayed width of the resource in CSS pixels
    public var width: Width?

    /// Creates a new Embed element with the specified attributes.
    ///
    /// - Parameters:
    ///   - src: The URL of the resource being embedded
    ///   - type: The MIME type to use to select the plug-in to instantiate
    ///   - width: The displayed width of the resource in CSS pixels
    ///   - height: The displayed height of the resource in CSS pixels
    public init(
        src: Src? = nil,
        type: ScriptType? = nil,
        width: Width? = nil,
        height: Height? = nil
    ) {
        self.src = src
        self.type = type
        self.width = width
        self.height = height
    }
}

extension Embed {
    /// The HTML tag name
    @inlinable public static var tag: String { "embed" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .embedded, .interactive, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .nothing)
}
