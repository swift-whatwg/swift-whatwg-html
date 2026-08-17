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

@Suite struct `ListType Test` {
    @Test func `ListType attribute should be type`() {
        #expect(WHATWG.HTML.Attribute.ListType.attribute == "type")
    }

    @Test func `ListType should have predefined values`() {
        #expect(WHATWG.HTML.Attribute.ListType.lowerAlpha.rawValue == "a")
        #expect(WHATWG.HTML.Attribute.ListType.upperAlpha.rawValue == "A")
        #expect(WHATWG.HTML.Attribute.ListType.lowerRoman.rawValue == "i")
        #expect(WHATWG.HTML.Attribute.ListType.upperRoman.rawValue == "I")
        #expect(WHATWG.HTML.Attribute.ListType.decimal.rawValue == "1")
    }
}
