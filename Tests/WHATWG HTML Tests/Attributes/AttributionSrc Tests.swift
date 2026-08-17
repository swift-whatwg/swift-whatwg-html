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

@Suite struct `AttributionSrc Test` {
    @Test func `AttributionSrc attribute should be attributionsrc`() {
        #expect(WHATWG_HTML.Attribute.AttributionSrc.attribute == "attributionsrc")
    }

    @Test func `AttributionSrc should support boolean initialization`() {
        let attrTrue = WHATWG_HTML.Attribute.AttributionSrc(true)
        #expect(attrTrue.shouldInclude == true)

        let attrFalse = WHATWG_HTML.Attribute.AttributionSrc(false)
        #expect(attrFalse.shouldInclude == false)
    }

    @Test func `AttributionSrc should support URL initialization`() {
        let attr = WHATWG_HTML.Attribute.AttributionSrc("https://example.com/register")
        #expect(attr.shouldInclude == true)
        #expect(attr.description == "https://example.com/register")
    }

    @Test func `AttributionSrc should support boolean literal`() {
        let attrTrue: WHATWG_HTML.Attribute.AttributionSrc = true
        #expect(attrTrue.shouldInclude == true)

        let attrFalse: WHATWG_HTML.Attribute.AttributionSrc = false
        #expect(attrFalse.shouldInclude == false)
    }

    @Test func `AttributionSrc should support string literal`() {
        let attr: WHATWG_HTML.Attribute.AttributionSrc = "https://analytics.example.com"
        #expect(attr.description == "https://analytics.example.com")
    }
}
