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

@Suite struct `Min Test` {
    @Test func `Min attribute should be min`() {
        #expect(WHATWG.HTML.Min.Attribute.attribute == "min")
    }

    @Test func `Min should support integer literal`() {
        let min: WHATWG.HTML.Min.Attribute = 0
        #expect(min.rawValue == "0")
    }

    @Test func `Min should support float literal`() {
        let min: WHATWG.HTML.Min.Attribute = 1.5
        #expect(min.rawValue == "1.5")
    }

    @Test func `Min zero convenience property`() {
        #expect(WHATWG.HTML.Min.Attribute.zero.rawValue == "0")
    }
}
