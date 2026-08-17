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
        #expect(WHATWG_HTML.Attribute.Spellcheck.attribute == "spellcheck")
    }

    @Test("Spellcheck cases description should match the spec", arguments: WHATWG_HTML.Attribute.Spellcheck.allCases)
    func cases(spellcheck: WHATWG_HTML.Attribute.Spellcheck) {
        switch spellcheck.rawValue {
        case true: #expect(spellcheck.description == "true")
        case false: #expect(spellcheck.description == "false")
        }
    }

    @Test func `Spellcheck should conform to CaseIterable`() {
        #expect(WHATWG_HTML.Attribute.Spellcheck.allCases.count == 2)
        #expect(WHATWG_HTML.Attribute.Spellcheck.allCases.contains(true))
        #expect(WHATWG_HTML.Attribute.Spellcheck.allCases.contains(false))
    }
}
