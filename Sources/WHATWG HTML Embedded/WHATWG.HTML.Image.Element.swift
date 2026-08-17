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

extension WHATWG.HTML.Image {
    public struct Element: WHATWG.HTML.Element {
        public var src: WHATWG.HTML.Src.Attribute?
        public var alt: WHATWG.HTML.Alt.Attribute?
        public var loading: WHATWG.HTML.Loading.Attribute?

        public init(
            src: WHATWG.HTML.Src.Attribute? = nil,
            alt: WHATWG.HTML.Alt.Attribute? = nil,
            loading: WHATWG.HTML.Loading.Attribute? = nil
        ) {
            self.src = src
            self.alt = alt
            self.loading = loading
        }
    }
}

extension WHATWG.HTML.Image.Element {
    @inlinable public static var tag: String { "img" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .embedded, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
