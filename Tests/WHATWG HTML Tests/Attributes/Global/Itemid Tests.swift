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

@Suite struct `Itemid Test` {
    @Test func `Itemid attribute should be itemid`() { #expect(Itemid.attribute == "itemid") }

    @Test func `Itemid should store and return its value`() {
        let itemid = Itemid("urn:isbn:978-0374228484")
        #expect(itemid.rawValue == "urn:isbn:978-0374228484")
    }

    @Test func `Itemid description should return its value`() {
        let itemid = Itemid("https://example.com/products/123")
        #expect(itemid.description == "https://example.com/products/123")
    }

    @Test func `Itemid should be initializable with string literal`() {
        let itemid: Itemid = "urn:isbn:978-0374228484"
        #expect(itemid.rawValue == "urn:isbn:978-0374228484")
    }
}
