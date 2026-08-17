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

extension WHATWG.HTML.Element {
    public struct Image: WHATWG.HTML.Element.`Protocol` {
        public var src: WHATWG.HTML.Attribute.Src?
        public var alt: WHATWG.HTML.Attribute.Alt?
        public var loading: WHATWG.HTML.Attribute.Loading?

        public init(
            src: WHATWG.HTML.Attribute.Src? = nil,
            alt: WHATWG.HTML.Attribute.Alt? = nil,
            loading: WHATWG.HTML.Attribute.Loading? = nil
        ) {
            self.src = src
            self.alt = alt
            self.loading = loading
        }
    }
}

extension WHATWG.HTML.Element.Image {
    @inlinable public static var tag: String { "img" }
    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = [
        .flow, .phrasing, .embedded, .palpable,
    ]
    public static let content: WHATWG.HTML.Element.Content = .init(model: .nothing)
}
