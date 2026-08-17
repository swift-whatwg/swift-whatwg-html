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
private typealias LinkTypeAttribute = WHATWG.HTML.Link.`Type`.Attribute

@Suite struct `LinkType Test` {
    @Test func `LinkType attribute should be type`() {
        #expect(LinkTypeAttribute.attribute == "type")
    }

    @Test func `LinkType convenience properties`() {
        #expect(LinkTypeAttribute.css.rawValue == "text/css")
        #expect(LinkTypeAttribute.javascript.rawValue == "text/javascript")
        #expect(LinkTypeAttribute.icon.rawValue == "image/x-icon")
        #expect(LinkTypeAttribute.svg.rawValue == "image/svg+xml")
        #expect(LinkTypeAttribute.png.rawValue == "image/png")
        #expect(LinkTypeAttribute.manifest.rawValue == "application/manifest+json")
        #expect(LinkTypeAttribute.rss.rawValue == "application/rss+xml")
        #expect(LinkTypeAttribute.atom.rawValue == "application/atom+xml")
        #expect(LinkTypeAttribute.json.rawValue == "application/json")
    }
}
