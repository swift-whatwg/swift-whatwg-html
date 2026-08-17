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

extension WHATWG.HTML.Attribute {
    /// Represents the controlslist attribute for the video element.
    @dynamicMemberLookup public struct ControlsList: WHATWG.HTML.StringAttribute {
        /// The attribute value
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Attribute.ControlsList {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "controlslist" }
}

extension WHATWG.HTML.Attribute.ControlsList {
    /// Hides the download control
    @inlinable public static var nodownload: Self { "nodownload" }

    /// Hides the fullscreen control
    @inlinable public static var nofullscreen: Self { "nofullscreen" }

    /// Hides the remote playback control
    @inlinable public static var noremoteplayback: Self { "noremoteplayback" }

    /// Combines multiple controlslist values
    public static func combine(_ values: [WHATWG.HTML.Attribute.ControlsList]) -> Self {
        return Self(values.map(\.rawValue).joined(separator: " "))
    }
}

extension WHATWG.HTML.Attribute.ControlsList: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: WHATWG.HTML.Attribute.ControlsList...) {
        self = Self.combine(elements)
    }
}
