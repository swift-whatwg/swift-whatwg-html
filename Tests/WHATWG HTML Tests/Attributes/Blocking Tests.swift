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

@Suite struct `Blocking Test` {
    @Test func `Blocking attribute should be blocking`() {
        #expect(Blocking.attribute == "blocking")
    }

    @Test func `Blocking should have render preset`() {
        #expect(Blocking.render.rawValue == "render")
    }
}
