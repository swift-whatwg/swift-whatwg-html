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

@Suite struct `FrameBorder Test` {
    @Test func `FrameBorder attribute should be frameborder`() {
        #expect(FrameBorder.attribute == "frameborder")
    }

    @Test func `FrameBorder should support integer literal`() {
        let frameBorder: FrameBorder = 1
        #expect(frameBorder.rawValue == "1")
    }
}
