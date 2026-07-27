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

@Suite struct `FormTarget Test` {
    @Test func `FormTarget attribute should be formtarget`() {
        #expect(FormTarget.attribute == "formtarget")
    }

    @Test func `FormTarget should have predefined values`() {
        #expect(FormTarget.`self`.rawValue == "_self")
        #expect(FormTarget.blank.rawValue == "_blank")
        #expect(FormTarget.parent.rawValue == "_parent")
        #expect(FormTarget.top.rawValue == "_top")
        #expect(FormTarget.unfencedTop.rawValue == "_unfencedTop")
    }
}
