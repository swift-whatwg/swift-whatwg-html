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

import ASCII_Primitives

extension WHATWG.HTML {
    /// Protocol for HTML boolean attributes
    ///
    /// Boolean attributes represent true/false values. When present in HTML,
    /// they are considered true. When absent, they are false.
    ///
    /// ## Example
    ///
    /// ```swift
    /// extension WHATWG.HTML.FormAttributes {
    ///     public struct Required: WHATWG.HTML.BooleanAttribute {
    ///         public static var attribute: String { "required" }
    ///         public var rawValue: Bool
    ///         public init(value: Bool) { self.rawValue = value }
    ///     }
    /// }
    /// ```
    public protocol BooleanAttribute: WHATWG.HTML.Attribute.`Protocol`, CustomStringConvertible,
        ExpressibleByBooleanLiteral, CaseIterable, RawRepresentable
    {
        var rawValue: Bool { get }
        init(value: Bool)
    }
}

extension WHATWG.HTML.BooleanAttribute {
    public init?(rawValue value: Bool) { self = .init(value: value) }
}

extension WHATWG.HTML.BooleanAttribute {
    public init(booleanLiteral value: Bool) { self = .init(value: value) }
}

extension WHATWG.HTML.BooleanAttribute {
    /// String representation of the boolean attribute
    ///
    /// For attributes implementing byte serialization (Autofocus, etc.),
    /// use the RFC pattern: String(attribute)
    /// For others, returns "true" or "false"
    public var description: String { rawValue ? "true" : "false" }
}

extension WHATWG.HTML.BooleanAttribute {
    @inlinable public static var allCases: [Self] { [true, false] }
}

extension WHATWG.HTML.BooleanAttribute {
    public subscript<T>(dynamicMember keyPath: KeyPath<Bool, T>) -> T {
        self.rawValue[keyPath: keyPath]
    }
}
