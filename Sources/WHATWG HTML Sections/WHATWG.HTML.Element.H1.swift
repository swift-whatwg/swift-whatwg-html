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

extension WHATWG.HTML.Element {
    /// The `<h1>` HTML section heading element.
    ///
    /// The `<h1>` to `<h6>` elements represent six levels of section headings; `<h1>` is
    /// the highest section level and `<h6>` is the lowest. These elements only include the
    /// global attributes.
    public struct H1: WHATWG.HTML.Element.`Protocol` {
        public init() {}
    }
}

extension WHATWG.HTML.Element.H1 {
    @inlinable public static var tag: String { "h1" }
    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = [
        .flow, .heading, .palpable,
    ]
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.phrasing]))
}
