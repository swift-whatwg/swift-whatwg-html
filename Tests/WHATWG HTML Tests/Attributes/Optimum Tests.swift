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

@Suite struct `Optimum Test` {
    @Test func `Optimum attribute should be optimum`() { #expect(Optimum.attribute == "optimum") }

    @Test func `Optimum should support integer literal`() {
        let optimum: Optimum = 50
        #expect(optimum.value == 50.0)
        #expect(optimum.description == "50.0")
    }

    @Test func `Optimum should support float literal`() {
        let optimum: Optimum = 66.7
        #expect(optimum.value == 66.7)
        #expect(optimum.description == "66.7")
    }

    @Test func `Optimum init with double`() {
        let optimum = Optimum(75.5)
        #expect(optimum.value == 75.5)
        #expect(optimum.description == "75.5")
    }
}
