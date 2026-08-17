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

@Suite struct `Maxlength Test` {
    @Test func `Maxlength attribute should be maxlength`() {
        #expect(WHATWG_HTML.Attribute.Maxlength.attribute == "maxlength")
    }

    @Test func `Maxlength should support integer literal`() {
        let maxlength: WHATWG_HTML.Attribute.Maxlength = 100
        #expect(maxlength.value == 100)
        #expect(maxlength.description == "100")
    }

    @Test func `Maxlength should enforce non-negative values`() {
        let maxlength = WHATWG_HTML.Attribute.Maxlength(-10)
        #expect(maxlength.value == 0)
    }

    @Test func `Maxlength characters factory method`() {
        let maxlength = WHATWG_HTML.Attribute.Maxlength.characters(50)
        #expect(maxlength.value == 50)
        #expect(maxlength.description == "50")
    }
}
