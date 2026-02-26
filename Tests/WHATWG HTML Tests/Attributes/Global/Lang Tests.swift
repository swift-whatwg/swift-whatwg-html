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

@Suite struct `Lang Test` {
    @Test func `Lang attribute should be lang`() { #expect(Lang.attribute == "lang") }

    @Test func `Lang should store and return its value`() {
        let lang = Lang("en-US")
        #expect(lang.rawValue == "en-US")
    }

    @Test func `Lang description should return its value`() {
        let lang = Lang("es")
        #expect(lang.description == "es")
    }

    @Test func `Lang should be initializable with string literal`() {
        let lang: Lang = "fr-CA"
        #expect(lang.rawValue == "fr-CA")
    }
}
