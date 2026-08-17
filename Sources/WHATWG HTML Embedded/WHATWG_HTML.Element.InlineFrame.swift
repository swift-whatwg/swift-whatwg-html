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

public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG_HTML.Element {
    /// Represents an HTML inline frame element (`<iframe>`), which embeds another HTML page into the current one.
    ///
    /// The `InlineFrame` struct provides a type-safe way to create HTML iframe elements with various attributes.
    ///
    /// ## Example
    ///
    /// ```swift
    /// iframe(src: "https://example.org", title: "Example Website") {
    ///     // No content as iframes are typically empty
    /// }
    /// ```
    ///
    /// ## Accessibility
    ///
    /// - Always include a descriptive `title` attribute to label the iframe's content for screen reader users
    /// - The `title` should concisely describe what is being embedded
    /// - Without a title, assistive technology users must navigate into the iframe to determine its content
    ///
    /// ## Best Practices
    ///
    /// - Use the `sandbox` attribute to restrict the embedded content's capabilities when embedding untrusted content
    /// - Avoid using too many iframes on a single page as they consume additional memory and computing resources
    /// - Use the `loading="lazy"` attribute for iframes that are not immediately visible on page load
    /// - Specify both `width` and `height` attributes to prevent layout shifts as the page loads
    public struct InlineFrame: WHATWG_HTML.Element.`Protocol` {
        /// The URL of the page to embed
        public var src: WHATWG_HTML.Attribute.Src?

        /// Inline HTML to embed, overriding the src attribute
        public var srcdoc: String?

        /// A targetable name for the embedded browsing context
        public var name: WHATWG_HTML.Attribute.Name?

        /// Controls restrictions applied to the content embedded in the iframe
        public var sandbox: String?

        /// Set to true if the iframe can activate fullscreen mode
        public var allowfullscreen: WHATWG_HTML.Attribute.Allowfullscreen?

        /// Specifies a Permissions Policy for the iframe
        public var allow: WHATWG_HTML.Attribute.Allow?

        /// The width of the frame in CSS pixels (default is 300)
        public var width: WHATWG_HTML.Attribute.Width?

        /// The height of the frame in CSS pixels (default is 150)
        public var height: WHATWG_HTML.Attribute.Height?

        /// Indicates how the browser should load the iframe (eager or lazy)
        public var loading: WHATWG_HTML.Attribute.Loading?

        /// Controls referrer policy when fetching the frame's resource
        public var referrerpolicy: WHATWG_HTML.Attribute.ReferrerPolicy?

        /// Creates a new InlineFrame element with the specified attributes.
        ///
        /// - Parameters:
        ///   - src: The URL of the page to embed
        ///   - srcdoc: Inline HTML to embed, overriding the src attribute
        ///   - name: A targetable name for the embedded browsing context
        ///   - sandbox: Controls restrictions applied to the content embedded in the iframe
        ///   - allowfullscreen: Set to true if the iframe can activate fullscreen mode
        ///   - allow: Specifies a Permissions Policy for the iframe
        ///   - width: The width of the frame in CSS pixels
        ///   - height: The height of the frame in CSS pixels
        ///   - loading: Indicates how the browser should load the iframe
        ///   - referrerpolicy: Controls referrer policy when fetching the frame's resource (typically empty for iframes)
        public init(
            src: WHATWG_HTML.Attribute.Src? = nil,
            srcdoc: String? = nil,
            name: WHATWG_HTML.Attribute.Name? = nil,
            sandbox: String? = nil,
            allowfullscreen: WHATWG_HTML.Attribute.Allowfullscreen? = nil,
            allow: WHATWG_HTML.Attribute.Allow? = nil,
            width: WHATWG_HTML.Attribute.Width? = nil,
            height: WHATWG_HTML.Attribute.Height? = nil,
            loading: WHATWG_HTML.Attribute.Loading? = nil,
            referrerpolicy: WHATWG_HTML.Attribute.ReferrerPolicy? = nil
        ) {
            self.src = src
            self.srcdoc = srcdoc
            self.name = name
            self.sandbox = sandbox
            self.allowfullscreen = allowfullscreen
            self.allow = allow
            self.width = width
            self.height = height
            self.loading = loading
            self.referrerpolicy = referrerpolicy

        }
    }
}

extension WHATWG_HTML.Element.InlineFrame {
    /// The HTML tag name
    @inlinable public static var tag: String { "iframe" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .embedded, .interactive, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
