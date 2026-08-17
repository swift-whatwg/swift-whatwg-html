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
    @dynamicMemberLookup public struct Cols: WHATWG.HTML.StringAttribute {

        /// The attribute value
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Attribute.Cols {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "cols" }
}

extension WHATWG.HTML.Attribute.Cols: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: Int) { self = .init(value: value.description) }
}
