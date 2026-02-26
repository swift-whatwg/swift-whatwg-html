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

@Suite struct `Itemprop Test` {
    @Test func `Itemprop attribute should be itemprop`() {
        #expect(Itemprop.attribute == "itemprop")
    }

    @Test func `Itemprop should store and return its value`() {
        let itemprop = Itemprop("name")
        #expect(itemprop.rawValue == "name")
    }

    @Test func `Itemprop description should return its value`() {
        let itemprop = Itemprop("director")
        #expect(itemprop.description == "director")
    }

    @Test func `Itemprop should be initializable with string literal`() {
        let itemprop: Itemprop = "author"
        #expect(itemprop.rawValue == "author")
    }

    @Test func `Itemprop should be initializable with array literal`() {
        let itemprop: Itemprop = ["favorite-color", "favorite-fruit"]
        #expect(itemprop.rawValue == "favorite-color favorite-fruit")
    }
}
