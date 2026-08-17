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
        #expect(WHATWG.HTML.Link.`Type`.Attribute.attribute == "type")
    }

    @Test func `LinkType convenience properties`() {
        #expect(WHATWG.HTML.Link.`Type`.Attribute.css.rawValue == "text/css")
        #expect(WHATWG.HTML.Link.`Type`.Attribute.javascript.rawValue == "text/javascript")
        #expect(WHATWG.HTML.Link.`Type`.Attribute.icon.rawValue == "image/x-icon")
        #expect(WHATWG.HTML.Link.`Type`.Attribute.svg.rawValue == "image/svg+xml")
        #expect(WHATWG.HTML.Link.`Type`.Attribute.png.rawValue == "image/png")
        #expect(WHATWG.HTML.Link.`Type`.Attribute.manifest.rawValue == "application/manifest+json")
        #expect(WHATWG.HTML.Link.`Type`.Attribute.rss.rawValue == "application/rss+xml")
        #expect(WHATWG.HTML.Link.`Type`.Attribute.atom.rawValue == "application/atom+xml")
        #expect(WHATWG.HTML.Link.`Type`.Attribute.json.rawValue == "application/json")
    }
}
