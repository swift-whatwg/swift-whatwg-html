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

@Suite struct `WHATWG.HTML.Attribute.Title Test` {
    @Test func `WHATWG.HTML.Attribute.Title attribute should be title`() {
        #expect(WHATWG.HTML.Attribute.Title.attribute == "title")
    }

    @Test func `WHATWG.HTML.Attribute.Title should store and return its value`() {
        let title = WHATWG.HTML.Attribute.Title("Helpful information")
        #expect(title.rawValue == "Helpful information")
    }

    @Test func `WHATWG.HTML.Attribute.Title description should return its value`() {
        let title = WHATWG.HTML.Attribute.Title("Click to submit the form")
        #expect(title.description == "Click to submit the form")
    }

    @Test func `WHATWG.HTML.Attribute.Title should be initializable with string literal`() {
        let title: WHATWG.HTML.Attribute.Title = "Hover for more details"
        #expect(title.rawValue == "Hover for more details")
    }
}
