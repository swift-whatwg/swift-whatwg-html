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

@Suite struct `Itemtype Test` {
    @Test func `Itemtype attribute should be itemtype`() {
        #expect(Itemtype.attribute == "itemtype")
    }

    @Test func `Itemtype should store and return its value`() {
        let itemtype = Itemtype("https://schema.org/Person")
        #expect(itemtype.rawValue == "https://schema.org/Person")
    }

    @Test func `Itemtype description should return its value`() {
        let itemtype = Itemtype("https://schema.org/Product")
        #expect(itemtype.description == "https://schema.org/Product")
    }

    @Test func `Itemtype should be initializable with string literal`() {
        let itemtype: Itemtype = "https://schema.org/Movie"
        #expect(itemtype.rawValue == "https://schema.org/Movie")
    }

    @Test func `Itemtype should be initializable with array literal`() {
        let itemtype: Itemtype = ["https://schema.org/Person", "https://schema.org/Teacher"]
        #expect(itemtype.rawValue == "https://schema.org/Person https://schema.org/Teacher")
    }

    @Test func `Itemtype should support SchemaOrg initialization`() {
        let itemtype = Itemtype(schemaOrg: "Person")
        #expect(itemtype.rawValue == "https://schema.org/Person")
    }
}
