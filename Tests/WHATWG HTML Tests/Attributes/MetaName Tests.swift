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
    @Test func `MetaName attribute should be name`() { #expect(MetaName.attribute == "name") }

    @Test func `MetaName should have predefined values`() {
        #expect(MetaName.application.rawValue == "application-name")
        #expect(MetaName.author.rawValue == "author")
        #expect(MetaName.description.rawValue == "description")
        #expect(MetaName.generator.rawValue == "generator")
        #expect(MetaName.keywords.rawValue == "keywords")
        #expect(MetaName.referrer.rawValue == "referrer")
        #expect(MetaName.themeColor.rawValue == "theme-color")
        #expect(MetaName.robots.rawValue == "robots")
        #expect(MetaName.viewport.rawValue == "viewport")
    }
}
