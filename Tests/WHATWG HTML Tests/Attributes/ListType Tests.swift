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
    @Test func `ListType attribute should be type`() { #expect(ListType.attribute == "type") }

    @Test func `ListType should have predefined values`() {
        #expect(ListType.lowerAlpha.rawValue == "a")
        #expect(ListType.upperAlpha.rawValue == "A")
        #expect(ListType.lowerRoman.rawValue == "i")
        #expect(ListType.upperRoman.rawValue == "I")
        #expect(ListType.decimal.rawValue == "1")
    }
}
