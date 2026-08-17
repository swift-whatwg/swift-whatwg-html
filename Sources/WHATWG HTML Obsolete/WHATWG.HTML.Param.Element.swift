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
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Param {
    /// Represents the obsolete `<param>` element.
    @available(
        *,
        deprecated,
        message: "Plugin-based content is deprecated. Use modern web standards instead."
    ) public struct Element: WHATWG.HTML.Element {

        /// Name of the parameter
        public var name: WHATWG.HTML.Name.Attribute?

        /// Value of the parameter
        public var value: WHATWG.HTML.Value.Attribute<String>?

        public init(
            name: WHATWG.HTML.Name.Attribute? = nil,
            value: WHATWG.HTML.Value.Attribute<String>? = nil
        ) {
            self.name = name
            self.value = value
        }
    }
}

@available(
    *,
    deprecated,
    message: "Plugin-based content is deprecated. Use modern web standards instead."
)
extension WHATWG.HTML.Param.Element {
    @inlinable public static var tag: String { "param" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
