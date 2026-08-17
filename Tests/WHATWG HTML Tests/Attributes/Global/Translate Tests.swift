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

@Suite struct `Translate Test` {
    @Test func `Translate attribute should be translate`() {
        #expect(WHATWG.HTML.Translate.Attribute.attribute == "translate")
    }

    @Test func `Translate description should match the spec`() {
        #expect(WHATWG.HTML.Translate.Attribute.yes.description == "yes")
        #expect(WHATWG.HTML.Translate.Attribute.no.description == "no")
    }

    @Test func `Translate should be initializable with boolean literals`() {
        let yesTranslate: WHATWG.HTML.Translate.Attribute = true
        let noTranslate: WHATWG.HTML.Translate.Attribute = false

        #expect(yesTranslate == .yes)
        #expect(noTranslate == .no)
    }
}
