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

extension WHATWG_HTML.Attribute {
    /// Specifies whether an element is draggable or not.
    ///
    /// The `draggable` global attribute is an enumerated attribute that indicates whether
    /// the element can be dragged, either with native browser behavior or the HTML Drag and Drop API.
    /// This attribute is part of the HTML5 specification and enables rich drag-and-drop functionality
    /// in web applications.
    ///
    /// ## Usage Notes
    ///
    /// - Can be applied to any HTML element that falls under the HTML namespace (not SVG elements)
    /// - Must be specified with an explicit value (`true` or `false`) - shorthand syntax is not allowed
    /// - If not specified, defaults to `auto`, which enables browser's default drag behavior:
    ///   - By default, only text selections, images, and links can be dragged
    ///   - For other elements, the `ondragstart` event handler must be set for drag to work
    /// - To make drag and drop fully functional, JavaScript event handlers are typically needed
    ///
    /// ## Examples
    ///
    /// Basic usage:
    /// ```html
    /// <!-- Make an element draggable -->
    /// <div draggable="true">Drag me</div>
    ///
    /// <!-- Explicitly disable dragging on an image (which is draggable by default) -->
    /// <img src="image.png" draggable="false" alt="Non-draggable image" />
    /// ```
    ///
    /// With JavaScript event handlers:
    /// ```html
    /// <div draggable="true"
    ///      ondragstart="event.dataTransfer.setData('text/plain', 'Dragged data')">
    ///   Drag me
    /// </div>
    ///
    /// <div ondrop="event.preventDefault(); console.log(event.dataTransfer.getData('text/plain'));"
    ///      ondragover="event.preventDefault()">
    ///   Drop zone
    /// </div>
    /// ```
    @dynamicMemberLookup public struct Draggable: WHATWG_HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG_HTML.Attribute.Draggable {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "draggable" }
}

extension WHATWG_HTML.Attribute.Draggable {
    /// Element can be dragged
    ///
    /// Example:
    /// ```html
    /// <div draggable="true">Drag me</div>
    /// ```
    @inlinable public static var `true`: Self { "true" }

    /// Element cannot be dragged
    ///
    /// Example:
    /// ```html
    /// <img src="image.png" draggable="false" alt="Non-draggable image" />
    /// ```
    @inlinable public static var `false`: Self { "false" }

    /// Browser default dragging behavior
    ///
    /// This is the default if the attribute is not specified.
    /// Only text selections, images, and links can be dragged by default.
    ///
    /// Example:
    /// ```html
    /// <div draggable="auto">Uses default browser behavior</div>
    /// ```
    @inlinable public static var auto: Self { "auto" }
}

extension WHATWG_HTML.Attribute.Draggable: CaseIterable {
    public static let allCases: [WHATWG_HTML.Attribute.Draggable] = [.true, .false, .auto]
}

extension WHATWG_HTML.Attribute.Draggable: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: BooleanLiteralType) {
        switch value {
        case true: self = .true
        case false: self = .false
        }
    }
}
