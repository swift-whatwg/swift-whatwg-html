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

@Suite struct `Max Test` {
    @Test func `Max attribute should be max`() { #expect(Max.attribute == "max") }

    @Test func `Max should support integer literal`() {
        let max: Max = 100
        #expect(max.rawValue == "100")
    }

    @Test func `Max should support float literal`() {
        let max: Max = 99.5
        #expect(max.rawValue == "99.5")
    }
}
