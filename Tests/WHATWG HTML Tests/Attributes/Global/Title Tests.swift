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

@Suite struct `WHATWG_HTML_GlobalAttributes.Title Test` {
    @Test func `WHATWG_HTML_GlobalAttributes.Title attribute should be title`() {
        #expect(WHATWG_HTML_GlobalAttributes.Title.attribute == "title")
    }

    @Test func `WHATWG_HTML_GlobalAttributes.Title should store and return its value`() {
        let title = WHATWG_HTML_GlobalAttributes.Title("Helpful information")
        #expect(title.rawValue == "Helpful information")
    }

    @Test func `WHATWG_HTML_GlobalAttributes.Title description should return its value`() {
        let title = WHATWG_HTML_GlobalAttributes.Title("Click to submit the form")
        #expect(title.description == "Click to submit the form")
    }

    @Test func `WHATWG_HTML_GlobalAttributes.Title should be initializable with string literal`() {
        let title: WHATWG_HTML_GlobalAttributes.Title = "Hover for more details"
        #expect(title.rawValue == "Hover for more details")
    }
}
