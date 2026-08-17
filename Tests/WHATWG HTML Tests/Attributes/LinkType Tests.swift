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
    @Test func `LinkType attribute should be type`() {
        #expect(WHATWG.HTML.Attribute.LinkType.attribute == "type")
    }

    @Test func `LinkType convenience properties`() {
        #expect(WHATWG.HTML.Attribute.LinkType.css.rawValue == "text/css")
        #expect(WHATWG.HTML.Attribute.LinkType.javascript.rawValue == "text/javascript")
        #expect(WHATWG.HTML.Attribute.LinkType.icon.rawValue == "image/x-icon")
        #expect(WHATWG.HTML.Attribute.LinkType.svg.rawValue == "image/svg+xml")
        #expect(WHATWG.HTML.Attribute.LinkType.png.rawValue == "image/png")
        #expect(WHATWG.HTML.Attribute.LinkType.manifest.rawValue == "application/manifest+json")
        #expect(WHATWG.HTML.Attribute.LinkType.rss.rawValue == "application/rss+xml")
        #expect(WHATWG.HTML.Attribute.LinkType.atom.rawValue == "application/atom+xml")
        #expect(WHATWG.HTML.Attribute.LinkType.json.rawValue == "application/json")
    }
}
