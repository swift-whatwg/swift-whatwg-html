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

@Suite struct `ColSpan Test` {
    @Test func `ColSpan attribute should be colspan`() { #expect(ColSpan.attribute == "colspan") }

    @Test func `ColSpan should support integer literal`() {
        let colSpan: ColSpan = 3
        #expect(colSpan.rawValue == "3")
    }

    @Test func `ColSpan description should equal rawValue`() {
        let colSpan = ColSpan(value: "2")
        #expect(colSpan.description == "2")
    }
}
