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
        #expect(WHATWG_HTML.Attribute.FormTarget.attribute == "formtarget")
    }

    @Test func `FormTarget should have predefined values`() {
        #expect(WHATWG_HTML.Attribute.FormTarget.`self`.rawValue == "_self")
        #expect(WHATWG_HTML.Attribute.FormTarget.blank.rawValue == "_blank")
        #expect(WHATWG_HTML.Attribute.FormTarget.parent.rawValue == "_parent")
        #expect(WHATWG_HTML.Attribute.FormTarget.top.rawValue == "_top")
        #expect(WHATWG_HTML.Attribute.FormTarget.unfencedTop.rawValue == "_unfencedTop")
    }
}
