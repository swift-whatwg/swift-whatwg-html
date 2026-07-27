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

// MARK: - Content Model

extension WHATWG_HTML.Element {
    /// Describes an element's content: its content model (what children are allowed).
    ///
    /// Each element defined in the HTML specification has a content model that describes
    /// what elements and text are allowed as children.
    public struct Content: Sendable, Equatable, Hashable, Codable {
        /// The content model for this element.
        public var model: Model

        public init(model: Model) { self.model = model }
    }
}

// MARK: - Transparent Content Model

extension WHATWG_HTML.Element.Content {
    /// Elements that have transparent content models.
    ///
    /// The content model of a transparent element is derived from the content model
    /// of its parent element. When a transparent element has no parent, the transparent
    /// part must be treated as accepting any flow content.
    public static let transparentElements: Set<String> = [
        "a", "ins", "del", "object", "video", "audio", "map", "noscript", "canvas", "slot",
    ]

    /// Checks whether an element has a transparent content model.
    @inlinable public static func isTransparent(_ element: String) -> Bool {
        transparentElements.contains(element)
    }
}

// MARK: - Paragraph Handling

extension WHATWG_HTML.Element.Content {
    /// Elements that can straddle paragraph boundaries.
    ///
    /// Paragraphs in flow content are defined relative to what the document looks
    /// like without these elements complicating matters, since they can straddle
    /// paragraph boundaries with their hybrid content models.
    public static let paragraphStraddlingElements: Set<String> = ["a", "ins", "del", "map"]
}

// MARK: - Content Model Validation

extension WHATWG_HTML.Element.Content.Model {
    /// Checks if this content model allows a specific category.
    public func allows(category: WHATWG_HTML.Element.Content.Category) -> Bool {
        switch self {
        case .nothing: return false
        case .text: return false
        case .categories(let allowed): return allowed.contains(category)
        case .transparent:
            // When no parent, transparent accepts any flow content
            return true
        }
    }

    /// Checks if this content model allows text content.
    public var allowsText: Bool {
        switch self {
        case .nothing: return false
        case .text: return true
        case .categories(let categories):
            return categories.contains(.phrasing) || categories.contains(.flow)
        case .transparent: return true
        }
    }
}

// MARK: - ExpressibleByArrayLiteral

extension WHATWG_HTML.Element.Content.Model: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: WHATWG_HTML.Element.Content.Category...) {
        self = .categories(Set(elements))
    }
}
