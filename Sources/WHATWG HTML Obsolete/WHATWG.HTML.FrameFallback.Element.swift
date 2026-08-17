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

extension WHATWG.HTML.FrameFallback {
    /// Represents the obsolete `<noframes>` element.
    @available(
        *,
        deprecated,
        message: "The noframes element is obsolete. Use modern layout techniques instead."
    ) public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

@available(
    *,
    deprecated,
    message: "The noframes element is obsolete. Use modern layout techniques instead."
)
extension WHATWG.HTML.FrameFallback.Element {
    @inlinable public static var tag: String { "noframes" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
