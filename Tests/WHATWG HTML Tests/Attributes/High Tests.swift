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

@Suite struct `High Test` {
    @Test func `High attribute should be high`() { #expect(High.attribute == "high") }

    @Test func `High should support integer literal`() {
        let high: High = 75
        #expect(high.value == 75.0)
        #expect(high.description == "75.0")
    }

    @Test func `High should support float literal`() {
        let high: High = 67.5
        #expect(high.value == 67.5)
        #expect(high.description == "67.5")
    }

    @Test func `High init with double`() {
        let high = High(90.0)
        #expect(high.value == 90.0)
        #expect(high.description == "90.0")
    }
}
