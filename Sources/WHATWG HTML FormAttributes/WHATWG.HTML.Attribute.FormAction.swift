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
    @dynamicMemberLookup public struct FormAction: WHATWG.HTML.StringAttribute {
        /// The attribute value
        public let rawValue: String

        /// Initialize with a value for the formaction attribute
        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Attribute.FormAction {
    /// The name of the HTML attribute
    @inlinable public static var attribute: String { "formaction" }
}
