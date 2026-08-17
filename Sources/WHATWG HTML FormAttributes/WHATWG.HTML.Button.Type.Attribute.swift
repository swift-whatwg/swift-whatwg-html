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

extension WHATWG.HTML.Button.`Type` {
    /// Button types that define how a button behaves
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Button.`Type`.Attribute {
    @inlinable public static var attribute: String { "type" }
}

extension WHATWG.HTML.Button.`Type`.Attribute {
    /// Submits the form data (default behavior)
    @inlinable public static var submit: Self { "submit" }

    /// Resets the form data to its initial values
    @inlinable public static var reset: Self { "reset" }

    /// No default behavior, typically used with JavaScript
    @inlinable public static var button: Self { "button" }
}
