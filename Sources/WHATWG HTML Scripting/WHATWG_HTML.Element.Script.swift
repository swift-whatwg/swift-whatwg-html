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
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_ScriptAttributes
public import WHATWG_HTML_Shared

extension WHATWG_HTML.Element {
    /// Represents an HTML `<script>` element, which is used to embed executable code or data.
    ///
    /// The `Script` struct provides a type-safe way to create HTML script elements with various attributes.
    /// This element is typically used to embed or refer to JavaScript code, but can also be used with other
    /// languages such as WebGL's GLSL shader programming language and JSON.
    ///
    /// ## Basic Examples
    ///
    /// ```swift
    /// // External script
    /// script.src("javascript.js")
    ///
    /// // Inline script
    /// script {
    ///     "alert('Hello World!');"
    /// }
    /// ```
    ///
    /// ## Using Async and Defer
    ///
    /// - `async`: Scripts will download in parallel to parsing and execute as soon as they are available.
    ///   Use when scripts run independently and don't depend on other scripts.
    ///
    /// ```swift
    /// script.src("analytics.js").async(true)
    /// ```
    ///
    /// - `defer`: Scripts will load in the order they appear and execute after the page content is loaded.
    ///   Use when scripts depend on the DOM being in place.
    ///
    /// ```swift
    /// script.src("ui-framework.js").defer(true)
    /// ```
    ///
    /// ## Module Scripts
    ///
    /// ```swift
    /// script.src("module.js").type(.module)
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Use `async` for scripts that don't depend on other scripts or DOM elements
    /// - Use `defer` for scripts that depend on the DOM being in place
    /// - For critical functionality, consider placing scripts at the end of the body
    /// - Use the `integrity` attribute for subresource integrity when loading external scripts
    /// - Specify `type="module"` for ES modules
    ///
    public struct Script: WHATWG_HTML.Element.`Protocol` {

        /// The URL of an external script file
        public var src: WHATWG_HTML.Attribute.Src?

        /// Indicates that the script should be executed asynchronously
        public var async: WHATWG_HTML.Attribute.Async?

        /// Indicates that the script should be executed after the document has been parsed
        public var `defer`: WHATWG_HTML.Attribute.Defer?

        /// Indicates the type of script represented
        public var type: WHATWG_HTML.Attribute.ScriptType?

        /// Indicates integrity metadata for the script
        public var integrity: WHATWG_HTML.Attribute.Integrity?

        /// Indicates which referrer to send when fetching the script
        public var referrerpolicy: WHATWG_HTML.Attribute.ReferrerPolicy?

        /// Indicates that the script should not be executed in browsers that support ES modules
        public var nomodule: WHATWG_HTML.Attribute.Nomodule?

        /// Provides a hint of the relative priority to use when fetching the script
        public var fetchpriority: WHATWG_HTML.Attribute.FetchPriority?

        /// Explicitly indicates that certain operations should be blocked on the fetching of the script
        public var blocking: WHATWG_HTML.Attribute.Blocking?

        /// Indicates how the element handles crossorigin requests
        public var crossorigin: WHATWG_HTML.Attribute.Crossorigin?

        /// A cryptographic nonce for Content-Security-Policy
        public var nonce: WHATWG_HTML.Attribute.Nonce?

        /// For registration with the Attribution Reporting API
        public var attributionsrc: WHATWG_HTML.Attribute.AttributionSrc?

        /// Creates a new Script element with the specified attributes.
        ///
        /// - Parameters:
        ///   - src: The URL of an external script file
        ///   - async: Indicates that the script should be executed asynchronously
        ///   - defer: Indicates that the script should be executed after the document has been parsed
        ///   - type: Indicates the type of script represented
        ///   - integrity: Integrity metadata for subresource integrity
        ///   - referrerpolicy: Indicates which referrer to send when fetching the script
        ///   - nomodule: Indicates that the script should not be executed in browsers that support ES modules
        ///   - fetchpriority: Provides a hint of the relative priority for fetching
        ///   - blocking: Indicates operations that should be blocked on script fetching
        ///   - crossorigin: Indicates how the element handles crossorigin requests
        ///   - nonce: A cryptographic nonce for Content-Security-Policy
        ///   - attributionsrc: For registration with the Attribution Reporting API
        public init(
            src: WHATWG_HTML.Attribute.Src? = nil,
            async: WHATWG_HTML.Attribute.Async? = nil,
            defer: WHATWG_HTML.Attribute.Defer? = nil,
            type: WHATWG_HTML.Attribute.ScriptType? = nil,
            integrity: WHATWG_HTML.Attribute.Integrity? = nil,
            referrerpolicy: WHATWG_HTML.Attribute.ReferrerPolicy? = nil,
            nomodule: WHATWG_HTML.Attribute.Nomodule? = nil,
            fetchpriority: WHATWG_HTML.Attribute.FetchPriority? = nil,
            blocking: WHATWG_HTML.Attribute.Blocking? = nil,
            crossorigin: WHATWG_HTML.Attribute.Crossorigin? = nil,
            nonce: WHATWG_HTML.Attribute.Nonce? = nil,
            attributionsrc: WHATWG_HTML.Attribute.AttributionSrc? = nil
        ) {
            self.src = src
            self.async = async
            self.defer = `defer`
            self.type = type
            self.integrity = integrity
            self.referrerpolicy = referrerpolicy
            self.nomodule = nomodule
            self.fetchpriority = fetchpriority
            self.blocking = blocking
            self.crossorigin = crossorigin
            self.nonce = nonce
            self.attributionsrc = attributionsrc

        }
    }
}

extension WHATWG_HTML.Element.Script {
    /// The HTML tag name
    @inlinable public static var tag: String { "script" }

    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .metadata, .flow, .phrasing, .`script-supporting`,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .text)
}
