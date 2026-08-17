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
        #expect(WHATWG.HTML.Attribute.Target.attribute == "target")
    }

    @Test func `Target convenience properties`() {
        #expect(WHATWG.HTML.Attribute.Target.`self`.rawValue == "_self")
        #expect(WHATWG.HTML.Attribute.Target.blank.rawValue == "_blank")
        #expect(WHATWG.HTML.Attribute.Target.parent.rawValue == "_parent")
        #expect(WHATWG.HTML.Attribute.Target.top.rawValue == "_top")
        #expect(WHATWG.HTML.Attribute.Target.unfencedTop.rawValue == "_unfencedTop")
    }
}
