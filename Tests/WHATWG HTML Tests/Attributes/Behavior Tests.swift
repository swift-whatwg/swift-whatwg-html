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
        #expect(WHATWG.HTML.Behavior.Attribute.attribute == "behavior")
    }

    @Test func `Behavior should have predefined values`() {
        #expect(WHATWG.HTML.Behavior.Attribute.scroll.rawValue == "scroll")
        #expect(WHATWG.HTML.Behavior.Attribute.slide.rawValue == "slide")
        #expect(WHATWG.HTML.Behavior.Attribute.alternate.rawValue == "alternate")
    }
}
