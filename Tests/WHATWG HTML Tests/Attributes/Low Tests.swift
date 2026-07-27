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

@Suite struct `Low Test` {
    @Test func `Low attribute should be low`() { #expect(Low.attribute == "low") }

    @Test func `Low should support integer literal`() {
        let low: Low = 25
        #expect(low.value == 25.0)
        #expect(low.description == "25.0")
    }

    @Test func `Low should support float literal`() {
        let low: Low = 33.3
        #expect(low.value == 33.3)
        #expect(low.description == "33.3")
    }

    @Test func `Low init with double`() {
        let low = Low(15.5)
        #expect(low.value == 15.5)
        #expect(low.description == "15.5")
    }
}
