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

public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

public struct Image: WHATWG_HTML.Element.`Protocol` {
    @inlinable public static var tag: String { "img" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .embedded, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .nothing)

    public var src: Src?
    public var alt: Alt?
    public var loading: Loading?

    public init(src: Src? = nil, alt: Alt? = nil, loading: Loading? = nil) {
        self.src = src
        self.alt = alt
        self.loading = loading
    }
}
