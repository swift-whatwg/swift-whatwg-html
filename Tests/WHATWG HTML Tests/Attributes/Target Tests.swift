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

@Suite struct `Target Test` {
    @Test func `Target attribute should be target`() {
        #expect(WHATWG.HTML.Target.Attribute.attribute == "target")
    }

    @Test func `Target convenience properties`() {
        #expect(WHATWG.HTML.Target.Attribute.`self`.rawValue == "_self")
        #expect(WHATWG.HTML.Target.Attribute.blank.rawValue == "_blank")
        #expect(WHATWG.HTML.Target.Attribute.parent.rawValue == "_parent")
        #expect(WHATWG.HTML.Target.Attribute.top.rawValue == "_top")
        #expect(WHATWG.HTML.Target.Attribute.unfencedTop.rawValue == "_unfencedTop")
    }
}
