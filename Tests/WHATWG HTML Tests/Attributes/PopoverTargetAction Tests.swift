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
        #expect(WHATWG_HTML.Attribute.PopoverTargetAction.attribute == "popovertargetaction")
    }

    @Test func `PopoverTargetAction should have predefined values`() {
        #expect(WHATWG_HTML.Attribute.PopoverTargetAction.show.rawValue == "show")
        #expect(WHATWG_HTML.Attribute.PopoverTargetAction.hide.rawValue == "hide")
        #expect(WHATWG_HTML.Attribute.PopoverTargetAction.toggle.rawValue == "toggle")
    }
}
