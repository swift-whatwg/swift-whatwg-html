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

import Testing
import WHATWG_HTML

@Suite struct `LinkType Test` {
    @Test func `LinkType attribute should be type`() { #expect(WHATWG_HTML.Attribute.LinkType.attribute == "type") }

    @Test func `LinkType convenience properties`() {
        #expect(WHATWG_HTML.Attribute.LinkType.css.rawValue == "text/css")
        #expect(WHATWG_HTML.Attribute.LinkType.javascript.rawValue == "text/javascript")
        #expect(WHATWG_HTML.Attribute.LinkType.icon.rawValue == "image/x-icon")
        #expect(WHATWG_HTML.Attribute.LinkType.svg.rawValue == "image/svg+xml")
        #expect(WHATWG_HTML.Attribute.LinkType.png.rawValue == "image/png")
        #expect(WHATWG_HTML.Attribute.LinkType.manifest.rawValue == "application/manifest+json")
        #expect(WHATWG_HTML.Attribute.LinkType.rss.rawValue == "application/rss+xml")
        #expect(WHATWG_HTML.Attribute.LinkType.atom.rawValue == "application/atom+xml")
        #expect(WHATWG_HTML.Attribute.LinkType.json.rawValue == "application/json")
    }
}
