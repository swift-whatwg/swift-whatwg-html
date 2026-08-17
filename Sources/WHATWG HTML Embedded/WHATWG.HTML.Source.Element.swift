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
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Source {
    /// Represents an HTML `<source>` element, which specifies one or more media resources for
    /// `<picture>`, `<audio>`, and `<video>` elements.
    ///
    /// The `Source` struct is a void element, meaning it has no content and does not require a closing tag.
    /// This element is commonly used to offer the same media content in multiple file formats to provide
    /// compatibility with a broad range of browsers given their differing support for image and media file formats.
    ///
    /// ## Examples
    ///
    /// ```swift
    /// // For video elements with multiple formats
    /// video {
    ///     source(src: "video.webm", type: "video/webm")
    ///     source(src: "video.mp4", type: "video/mp4")
    ///     "Your browser does not support HTML video."
    /// }
    ///
    /// // For responsive images with media queries
    /// picture {
    ///     source(srcset: "large.jpg", media: "(min-width: 800px)")
    ///     source(srcset: "medium.jpg", media: "(min-width: 600px)")
    ///     img(src: "small.jpg", alt: "A responsive image")
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Provide multiple source formats for maximum browser compatibility
    /// - When used with `<picture>`, always include an `<img>` fallback
    /// - Specify the `type` attribute to avoid unnecessary server requests
    /// - For responsive images, use media queries with the `media` attribute
    /// - For `<picture>`, use the `srcset` attribute; for `<audio>` and `<video>`, use the `src` attribute
    ///
    public struct Element: WHATWG.HTML.Element {
        /// The MIME media type of the resource
        public var type: WHATWG.HTML.Source.`Type`.Attribute?

        /// The URL of the media resource (used with `<audio>` and `<video>`)
        public var src: WHATWG.HTML.Src.Attribute?

        /// A comma-separated list of image URLs and their descriptors (used with `<picture>`)
        public var srcset: WHATWG.HTML.ImageSrcSet.Attribute?

        /// A list of source sizes that describe the final rendered width of the image
        public var sizes: WHATWG.HTML.Sizes.Attribute?

        /// A media query for the resource's intended media
        public var media: WHATWG.HTML.Media.Attribute?

        /// The intrinsic height of the image in pixels (for `<picture>`)
        public var height: WHATWG.HTML.Height.Attribute?

        /// The intrinsic width of the image in pixels (for `<picture>`)
        public var width: WHATWG.HTML.Width.Attribute?

        /// Creates a new Source element with the specified attributes.
        ///
        /// - Parameters:
        ///   - type: The MIME media type of the resource
        ///   - src: The URL of the media resource (for `<audio>` and `<video>`)
        ///   - srcset: A comma-separated list of image URLs and their descriptors (for `<picture>`)
        ///   - sizes: A list of source sizes that describe the final rendered width of the image
        ///   - media: A media query for the resource's intended media
        ///   - height: The intrinsic height of the image in pixels (for `<picture>`)
        ///   - width: The intrinsic width of the image in pixels (for `<picture>`)
        public init(
            type: WHATWG.HTML.Source.`Type`.Attribute? = nil,
            src: WHATWG.HTML.Src.Attribute? = nil,
            srcset: WHATWG.HTML.ImageSrcSet.Attribute? = nil,
            sizes: WHATWG.HTML.Sizes.Attribute? = nil,
            media: WHATWG.HTML.Media.Attribute? = nil,
            height: WHATWG.HTML.Height.Attribute? = nil,
            width: WHATWG.HTML.Width.Attribute? = nil
        ) {
            self.type = type
            self.src = src
            self.srcset = srcset
            self.sizes = sizes
            self.media = media
            self.height = height
            self.width = width
        }
    }
}

extension WHATWG.HTML.Source.Element {
    /// The HTML tag name
    @inlinable public static var tag: String { "source" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
