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

@Suite struct `Behavior Test` {
    @Test func `Behavior attribute should be behavior`() {
        #expect(WHATWG.HTML.Attribute.Behavior.attribute == "behavior")
    }

    @Test func `Behavior should have predefined values`() {
        #expect(WHATWG.HTML.Attribute.Behavior.scroll.rawValue == "scroll")
        #expect(WHATWG.HTML.Attribute.Behavior.slide.rawValue == "slide")
        #expect(WHATWG.HTML.Attribute.Behavior.alternate.rawValue == "alternate")
    }
}
