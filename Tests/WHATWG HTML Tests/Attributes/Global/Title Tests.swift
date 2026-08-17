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

@Suite struct `WHATWG.HTML.Title.Attribute Test` {
    @Test func `WHATWG.HTML.Title.Attribute attribute should be title`() {
        #expect(WHATWG.HTML.Title.Attribute.attribute == "title")
    }

    @Test func `WHATWG.HTML.Title.Attribute should store and return its value`() {
        let title = WHATWG.HTML.Title.Attribute("Helpful information")
        #expect(title.rawValue == "Helpful information")
    }

    @Test func `WHATWG.HTML.Title.Attribute description should return its value`() {
        let title = WHATWG.HTML.Title.Attribute("Click to submit the form")
        #expect(title.description == "Click to submit the form")
    }

    @Test func `WHATWG.HTML.Title.Attribute should be initializable with string literal`() {
        let title: WHATWG.HTML.Title.Attribute = "Hover for more details"
        #expect(title.rawValue == "Hover for more details")
    }
}
