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

@Suite struct `Tabindex Test` {
    @Test func `Tabindex attribute should be tabindex`() {
        #expect(Tabindex.attribute == "tabindex")
    }

    @Test func `Tabindex should store and return its value`() {
        let tabindex = Tabindex(2)
        #expect(tabindex.value == 2)
    }

    @Test func `Tabindex description should return its value as string`() {
        let tabindex = Tabindex(-1)
        #expect(tabindex.description == "-1")
    }

    @Test func `Tabindex should have predefined constants`() {
        #expect(Tabindex.notTabbable.value == -1)
        #expect(Tabindex.inDocumentOrder.value == 0)
    }
}
