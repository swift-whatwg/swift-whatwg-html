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

@Suite struct `Class Test` {
    @Test func `Class attribute should be class`() {
        #expect(WHATWG.HTML.Class.Attribute.attribute == "class")
    }

    @Test func `Class description should reflect the initialized values`() {
        let singleClass: WHATWG.HTML.Class.Attribute = WHATWG.HTML.Class.Attribute("header")
        #expect(singleClass.description == "header")

        let multipleClasses: WHATWG.HTML.Class.Attribute = ["header", "large", "primary"]
        #expect(multipleClasses.description == "header large primary")

        let emptyClass = WHATWG.HTML.Class.Attribute("")
        #expect(emptyClass.description.isEmpty)
    }

    @Test func `Class can be initialized with single string or array of strings`() {
        let singleClass: WHATWG.HTML.Class.Attribute = ("header")
        let arrayClass: WHATWG.HTML.Class.Attribute = ["header"]
        #expect(singleClass.description == arrayClass.description)

        let multipleClasses: WHATWG.HTML.Class.Attribute = WHATWG.HTML.Class.Attribute(
            "header large primary"
        )
        let arrayMultipleClasses: WHATWG.HTML.Class.Attribute = ["header", "large", "primary"]
        #expect(multipleClasses.description == arrayMultipleClasses.description)
    }
}
