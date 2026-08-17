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
        #expect(WHATWG_HTML.Attribute.Direction.attribute == "direction")
    }

    @Test func `Direction convenience properties`() {
        #expect(WHATWG_HTML.Attribute.Direction.left.rawValue == "left")
        #expect(WHATWG_HTML.Attribute.Direction.right.rawValue == "right")
        #expect(WHATWG_HTML.Attribute.Direction.up.rawValue == "up")
        #expect(WHATWG_HTML.Attribute.Direction.down.rawValue == "down")
    }
}
