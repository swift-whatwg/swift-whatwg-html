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

@Suite struct `PopoverTargetAction Test` {
    @Test func `PopoverTargetAction attribute should be popovertargetaction`() {
        #expect(WHATWG.HTML.PopoverTargetAction.Attribute.attribute == "popovertargetaction")
    }

    @Test func `PopoverTargetAction should have predefined values`() {
        #expect(WHATWG.HTML.PopoverTargetAction.Attribute.show.rawValue == "show")
        #expect(WHATWG.HTML.PopoverTargetAction.Attribute.hide.rawValue == "hide")
        #expect(WHATWG.HTML.PopoverTargetAction.Attribute.toggle.rawValue == "toggle")
    }
}
