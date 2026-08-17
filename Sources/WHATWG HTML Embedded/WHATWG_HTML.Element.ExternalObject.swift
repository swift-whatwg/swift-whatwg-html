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
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG_HTML.Element {
    /// Represents an HTML `<object>` element, which embeds external resources such as images,
    /// audio, video, PDFs, or content to be handled by browser plugins.
    ///
    /// The Object element provides a versatile way to include external content in a web page.
    /// It can be used for multimedia, PDFs, web pages, Flash (legacy), and more. The element
    /// also supports fallback content for browsers that cannot display the resource.
    ///
    /// ## Example
    ///
    /// ```swift
    /// object(
    ///     data: "document.pdf",
    ///     type: .pdf,
    ///     width: 600,
    ///     height: 400
    /// ) {
    ///     p {
    ///         "Your browser doesn't support PDFs. "
    ///         a(href: "document.pdf") {
    ///             "Download the PDF"
    ///         }
    ///         " instead."
    ///     }
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Always provide fallback content within the object for browsers that can't render the resource
    /// - Specify both data and type attributes whenever possible
    /// - Set width and height attributes to prevent layout shifts
    /// - Consider accessibility implications - ensure content is accessible to all users
    /// - For images, audio, or video, prefer the specialized elements (<img>, <audio>, <video>)
    /// - For modern web applications, avoid using object for Flash content
    ///
    public struct ExternalObject: WHATWG_HTML.Element.`Protocol` {
        /// The URL of the resource to embed
        public var data: WHATWG_HTML.Attribute.ObjectData?

        /// The content type (MIME type) of the embedded resource
        public var type: WHATWG_HTML.Attribute.ObjectType?

        /// The form element that the object is associated with
        public var form: WHATWG_HTML.Attribute.Form.ID?

        /// The name of the browsing context or control
        public var name: WHATWG_HTML.Attribute.Name?

        /// The height of the object in pixels
        public var height: WHATWG_HTML.Attribute.Height?

        /// The width of the object in pixels
        public var width: WHATWG_HTML.Attribute.Width?

        /// Specifies an image map for the object
        public var usemap: WHATWG_HTML.Attribute.Usemap?

        /// Creates a new object element with the specified attributes.
        ///
        /// - Parameters:
        ///   - data: The URL of the resource to embed
        ///   - type: The MIME type of the resource
        ///   - form: The ID of the form element this object is associated with
        ///   - name: The name of the object
        ///   - height: The height of the object in pixels
        ///   - width: The width of the object in pixels
        ///   - usemap: Reference to an image map
        public init(
            data: WHATWG_HTML.Attribute.ObjectData? = nil,
            type: WHATWG_HTML.Attribute.ObjectType? = nil,
            form: WHATWG_HTML.Attribute.Form.ID? = nil,
            name: WHATWG_HTML.Attribute.Name? = nil,
            height: WHATWG_HTML.Attribute.Height? = nil,
            width: WHATWG_HTML.Attribute.Width? = nil,
            usemap: WHATWG_HTML.Attribute.Usemap? = nil
        ) {
            self.data = data
            self.type = type
            self.form = form
            self.name = name
            self.height = height
            self.width = width
            self.usemap = usemap

        }
    }
}

extension WHATWG_HTML.Element.ExternalObject {
    /// The HTML tag name
    @inlinable public static var tag: String { "object" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .embedded, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .transparent)
}
