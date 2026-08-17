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

@Suite struct `Itemref Test` {
    @Test func `Itemref attribute should be itemref`() {
        #expect(WHATWG.HTML.Attribute.Itemref.attribute == "itemref")
    }

    @Test func `Itemref should store and return its value`() {
        let itemref = WHATWG.HTML.Attribute.Itemref("details contact")
        #expect(itemref.rawValue == "details contact")
    }

    @Test func `Itemref description should return its value`() {
        let itemref = WHATWG.HTML.Attribute.Itemref("name address")
        #expect(itemref.description == "name address")
    }

    @Test func `Itemref should be initializable with string literal`() {
        let itemref: WHATWG.HTML.Attribute.Itemref = "profile contact"
        #expect(itemref.rawValue == "profile contact")
    }

    @Test func `Itemref should be initializable with array literal`() {
        let itemref: WHATWG.HTML.Attribute.Itemref = ["name", "address", "contact"]
        #expect(itemref.rawValue == "name address contact")
    }
}
