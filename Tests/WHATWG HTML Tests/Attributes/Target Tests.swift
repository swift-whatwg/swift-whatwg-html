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
    @Test func `Target attribute should be target`() { #expect(Target.attribute == "target") }

    @Test func `Target convenience properties`() {
        #expect(Target.`self`.rawValue == "_self")
        #expect(Target.blank.rawValue == "_blank")
        #expect(Target.parent.rawValue == "_parent")
        #expect(Target.top.rawValue == "_top")
        #expect(Target.unfencedTop.rawValue == "_unfencedTop")
    }
}
