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

@Suite struct `Direction Test` {
    @Test func `Direction attribute should be direction`() {
        #expect(Direction.attribute == "direction")
    }

    @Test func `Direction convenience properties`() {
        #expect(Direction.left.rawValue == "left")
        #expect(Direction.right.rawValue == "right")
        #expect(Direction.up.rawValue == "up")
        #expect(Direction.down.rawValue == "down")
    }
}
