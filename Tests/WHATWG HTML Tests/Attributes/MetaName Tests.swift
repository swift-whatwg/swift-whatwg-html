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

@Suite struct `MetaName Test` {
    @Test func `MetaName attribute should be name`() {
        #expect(WHATWG_HTML.Attribute.MetaName.attribute == "name")
    }

    @Test func `MetaName should have predefined values`() {
        #expect(WHATWG_HTML.Attribute.MetaName.application.rawValue == "application-name")
        #expect(WHATWG_HTML.Attribute.MetaName.author.rawValue == "author")
        #expect(WHATWG_HTML.Attribute.MetaName.description.rawValue == "description")
        #expect(WHATWG_HTML.Attribute.MetaName.generator.rawValue == "generator")
        #expect(WHATWG_HTML.Attribute.MetaName.keywords.rawValue == "keywords")
        #expect(WHATWG_HTML.Attribute.MetaName.referrer.rawValue == "referrer")
        #expect(WHATWG_HTML.Attribute.MetaName.themeColor.rawValue == "theme-color")
        #expect(WHATWG_HTML.Attribute.MetaName.robots.rawValue == "robots")
        #expect(WHATWG_HTML.Attribute.MetaName.viewport.rawValue == "viewport")
    }
}
