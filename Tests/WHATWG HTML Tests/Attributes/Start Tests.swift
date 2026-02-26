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

@Suite struct `Start Test` {
    @Test func `Start attribute should be start`() { #expect(Start.attribute == "start") }

    @Test func `Start should support integer initialization`() {
        let start = Start(4)
        #expect(start.rawValue == "4")
    }

    @Test func `Start should support integer literal`() {
        let start: Start = 10
        #expect(start.rawValue == "10")
    }
}
