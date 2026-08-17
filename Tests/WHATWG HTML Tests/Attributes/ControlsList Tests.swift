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

@Suite struct `ControlsList Test` {
    @Test func `ControlsList attribute should be controlslist`() {
        #expect(WHATWG.HTML.Attribute.ControlsList.attribute == "controlslist")
    }

    @Test func `ControlsList should have predefined values`() {
        #expect(WHATWG.HTML.Attribute.ControlsList.nodownload.rawValue == "nodownload")
        #expect(WHATWG.HTML.Attribute.ControlsList.nofullscreen.rawValue == "nofullscreen")
        #expect(WHATWG.HTML.Attribute.ControlsList.noremoteplayback.rawValue == "noremoteplayback")
    }

    @Test func `ControlsList should support combining values`() {
        let combined = WHATWG.HTML.Attribute.ControlsList.combine([.nodownload, .nofullscreen])
        #expect(combined.rawValue == "nodownload nofullscreen")
    }
}
