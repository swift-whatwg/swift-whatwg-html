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
private typealias OrderedListTypeAttribute = WHATWG.HTML.OrderedList.`Type`.Attribute

@Suite struct `ListType Test` {
    @Test func `ListType attribute should be type`() {
        #expect(OrderedListTypeAttribute.attribute == "type")
    }

    @Test func `ListType should have predefined values`() {
        #expect(OrderedListTypeAttribute.lowerAlpha.rawValue == "a")
        #expect(OrderedListTypeAttribute.upperAlpha.rawValue == "A")
        #expect(OrderedListTypeAttribute.lowerRoman.rawValue == "i")
        #expect(OrderedListTypeAttribute.upperRoman.rawValue == "I")
        #expect(OrderedListTypeAttribute.decimal.rawValue == "1")
    }
}
