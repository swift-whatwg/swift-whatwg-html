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

extension WHATWG_HTML.Element {
    public struct Image: WHATWG_HTML.Element.`Protocol` {
        public var src: Attribute.Src?
        public var alt: Attribute.Alt?
        public var loading: Attribute.Loading?

        public init(src: Attribute.Src? = nil, alt: Attribute.Alt? = nil, loading: Attribute.Loading? = nil) {
            self.src = src
            self.alt = alt
            self.loading = loading
        }
    }
}

extension WHATWG_HTML.Element.Image {
    @inlinable public static var tag: String { "img" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .embedded, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .nothing)
}
