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

@Suite struct `Minlength Test` {
    @Test func `Minlength attribute should be minlength`() {
        #expect(Minlength.attribute == "minlength")
    }

    @Test func `Minlength should support integer literal`() {
        let minlength: Minlength = 5
        #expect(minlength.value == 5)
        #expect(minlength.description == "5")
    }

    @Test func `Minlength should enforce non-negative values`() {
        let minlength = Minlength(-5)
        #expect(minlength.value == 0)
    }

    @Test func `Minlength convenience properties and methods`() {
        #expect(Minlength.none.value == 0)
        #expect(Minlength.characters(10).value == 10)
    }
}
