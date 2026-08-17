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

@Suite struct `WHATWG_HTML.Attribute.Style Test` {
    @Test func `WHATWG_HTML.Attribute.Style attribute should be style`() {
        #expect(WHATWG_HTML.Attribute.Style.attribute == "style")
    }

    @Test func `WHATWG_HTML.Attribute.Style should store and return its value`() {
        let style = WHATWG_HTML.Attribute.Style("color: red; font-size: 14px;")
        #expect(style.rawValue == "color: red; font-size: 14px;")
    }

    @Test func `WHATWG_HTML.Attribute.Style description should return its value`() {
        let style = WHATWG_HTML.Attribute.Style("margin: 10px; padding: 5px;")
        #expect(style.description == "margin: 10px; padding: 5px;")
    }

    @Test func `WHATWG_HTML.Attribute.Style should be initializable with string literal`() {
        let style: WHATWG_HTML.Attribute.Style = "background-color: blue;"
        #expect(style.rawValue == "background-color: blue;")
    }

    @Test func `WHATWG_HTML.Attribute.Style should support dictionary-based initialization`()
    {
        let style = WHATWG_HTML.Attribute.Style(["color": "red", "font-size": "14px"])

        #expect(style.description.contains("color: red"))
        #expect(style.description.contains("font-size: 14px"))
    }
}
