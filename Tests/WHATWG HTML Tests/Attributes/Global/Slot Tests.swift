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

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Slot Test` {
    @Test func `Slot attribute should be slot`() { #expect(Slot.attribute == "slot") }

    @Test func `Slot should store and return its value`() {
        let slot = Slot("header")
        #expect(slot.rawValue == "header")
    }

    @Test func `Slot description should return its value`() {
        let slot = Slot("footer")
        #expect(slot.description == "footer")
    }

    @Test func `Slot should be initializable with string literal`() {
        let slot: Slot = "sidebar"
        #expect(slot.rawValue == "sidebar")
    }
}
