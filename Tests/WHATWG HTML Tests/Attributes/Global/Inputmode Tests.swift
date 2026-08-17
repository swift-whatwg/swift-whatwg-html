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

@Suite struct `Inputmode Test` {
    @Test func `Inputmode attribute should be inputmode`() {
        #expect(WHATWG.HTML.Inputmode.Attribute.attribute == "inputmode")
    }

    @Test(
        "Inputmode cases description should match the spec",
        arguments: WHATWG.HTML.Inputmode.Attribute.allCases
    )
    func cases(inputmode: WHATWG.HTML.Inputmode.Attribute) {
        switch inputmode {
        case .none: #expect(inputmode.description == "none")
        case .text: #expect(inputmode.description == "text")
        case .decimal: #expect(inputmode.description == "decimal")
        case .numeric: #expect(inputmode.description == "numeric")
        case .tel: #expect(inputmode.description == "tel")
        case .search: #expect(inputmode.description == "search")
        case .email: #expect(inputmode.description == "email")
        case .url: #expect(inputmode.description == "url")
        default: ()
        }
    }

    @Test func `Inputmode should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Inputmode.Attribute.allCases.count == 8)
        #expect(WHATWG.HTML.Inputmode.Attribute.allCases.contains(.none))
        #expect(WHATWG.HTML.Inputmode.Attribute.allCases.contains(.text))
        #expect(WHATWG.HTML.Inputmode.Attribute.allCases.contains(.decimal))
        #expect(WHATWG.HTML.Inputmode.Attribute.allCases.contains(.numeric))
        #expect(WHATWG.HTML.Inputmode.Attribute.allCases.contains(.tel))
        #expect(WHATWG.HTML.Inputmode.Attribute.allCases.contains(.search))
        #expect(WHATWG.HTML.Inputmode.Attribute.allCases.contains(.email))
        #expect(WHATWG.HTML.Inputmode.Attribute.allCases.contains(.url))
    }

    @Test(arguments: WHATWG.HTML.Inputmode.Attribute.allCases)
    func `Inputmode rawValue should match description`(inputmode: WHATWG.HTML.Inputmode.Attribute) {
        #expect(inputmode.rawValue == inputmode.description)
    }

    @Test(
        arguments: [
            ("none", WHATWG.HTML.Inputmode.Attribute.none),
            ("text", WHATWG.HTML.Inputmode.Attribute.text),
            ("decimal", WHATWG.HTML.Inputmode.Attribute.decimal),
            ("numeric", WHATWG.HTML.Inputmode.Attribute.numeric),
            ("tel", WHATWG.HTML.Inputmode.Attribute.tel),
            ("search", WHATWG.HTML.Inputmode.Attribute.search),
            ("email", WHATWG.HTML.Inputmode.Attribute.email),
            ("url", WHATWG.HTML.Inputmode.Attribute.url),
        ]
    ) func `Inputmode should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Inputmode.Attribute?
    ) {
        #expect(WHATWG.HTML.Inputmode.Attribute(rawValue: input) == expected)
    }
}
