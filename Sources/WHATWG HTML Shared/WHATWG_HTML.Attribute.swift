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
    /// Protocol for HTML attributes
    ///
    /// Conforming types represent HTML attributes as defined in the WHATWG HTML Living Standard.
    /// Each attribute has a unique name.
    ///
    /// ## Example
    ///
    /// ```swift
    /// extension WHATWG_HTML.GlobalAttributes {
    ///     public struct Id: WHATWG_HTML.Attribute {
    ///         public static var attribute: String { "id" }
    ///         public var value: String
    ///     }
    /// }
    /// ```
    public protocol Attribute: Sendable, Hashable {
        /// The HTML attribute name
        ///
        /// For example, `"id"`, `"class"`, `"href"`, etc.
        static var attribute: String { get }
    }
}
