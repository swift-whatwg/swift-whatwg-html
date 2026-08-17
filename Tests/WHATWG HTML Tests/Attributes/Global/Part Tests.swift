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

@Suite struct `Part Test` {
    @Test func `Part attribute should be part`() { #expect(WHATWG_HTML.Attribute.Part.attribute == "part") }

    @Test func `Part description should reflect the initialized values`() {
        let singlePart = WHATWG_HTML.Attribute.Part("header")
        #expect(singlePart.description == "header")

        let multipleParts: WHATWG_HTML.Attribute.Part = ["header", "title"]
        #expect(multipleParts.description == "header title")

        let emptyPart = WHATWG_HTML.Attribute.Part("")
        #expect(emptyPart.description.isEmpty)
    }

    @Test func `Part can be initialized with single string or array of strings`() {
        let singlePart: WHATWG_HTML.Attribute.Part = "header"
        let arrayPart: WHATWG_HTML.Attribute.Part = "header"
        #expect(singlePart.description == arrayPart.description)

        let multipleParts: WHATWG_HTML.Attribute.Part = ["header", "title"]
        #expect(multipleParts.description == "header title")
    }
}
