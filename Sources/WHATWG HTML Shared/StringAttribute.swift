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

extension WHATWG_HTML {
    /// Protocol for HTML string attributes
    ///
    /// String attributes represent textual values in HTML.
    ///
    /// ## Example
    ///
    /// ```swift
    /// extension WHATWG_HTML.GlobalAttributes {
    ///     public struct Class: WHATWG_HTML.StringAttribute {
    ///         public static var attribute: String { "class" }
    ///         public var rawValue: String
    ///         public init(value: String) { self.rawValue = value }
    ///     }
    /// }
    /// ```
    public protocol StringAttribute: Attribute, CustomStringConvertible, ExpressibleByStringLiteral,
        ExpressibleByStringInterpolation, RawRepresentable
    {
        var rawValue: String { get }
        init(value: String)
    }
}

extension WHATWG_HTML.StringAttribute {
    public init?(rawValue value: String) { self = .init(value: value) }
}

extension WHATWG_HTML.StringAttribute {
    public init(_ value: String) { self = .init(value: value) }
}

extension WHATWG_HTML.StringAttribute {
    public init(stringLiteral value: String) { self = .init(value: value) }
}

extension WHATWG_HTML.StringAttribute {
    /// String representation of the string attribute
    ///
    /// For attributes implementing byte serialization (Id, etc.),
    /// use the RFC pattern: String(attribute)
    /// For others, returns the raw value
    public var description: String { rawValue }
}

extension WHATWG_HTML.StringAttribute {
    public subscript<T>(dynamicMember keyPath: KeyPath<String, T>) -> T {
        self.rawValue[keyPath: keyPath]
    }
}
