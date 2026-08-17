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

@Suite struct `Spellcheck Test` {
    @Test func `Spellcheck attribute should be spellcheck`() {
        #expect(WHATWG.HTML.Spellcheck.Attribute.attribute == "spellcheck")
    }

    @Test(
        "Spellcheck cases description should match the spec",
        arguments: WHATWG.HTML.Spellcheck.Attribute.allCases
    )
    func cases(spellcheck: WHATWG.HTML.Spellcheck.Attribute) {
        switch spellcheck.rawValue {
        case true: #expect(spellcheck.description == "true")
        case false: #expect(spellcheck.description == "false")
        }
    }

    @Test func `Spellcheck should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Spellcheck.Attribute.allCases.count == 2)
        #expect(WHATWG.HTML.Spellcheck.Attribute.allCases.contains(true))
        #expect(WHATWG.HTML.Spellcheck.Attribute.allCases.contains(false))
    }
}
