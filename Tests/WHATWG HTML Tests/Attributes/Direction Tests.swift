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
        #expect(WHATWG.HTML.Direction.Attribute.attribute == "direction")
    }

    @Test func `Direction convenience properties`() {
        #expect(WHATWG.HTML.Direction.Attribute.left.rawValue == "left")
        #expect(WHATWG.HTML.Direction.Attribute.right.rawValue == "right")
        #expect(WHATWG.HTML.Direction.Attribute.up.rawValue == "up")
        #expect(WHATWG.HTML.Direction.Attribute.down.rawValue == "down")
    }
}
