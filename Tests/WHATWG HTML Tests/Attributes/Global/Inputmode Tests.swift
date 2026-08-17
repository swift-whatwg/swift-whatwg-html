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
        #expect(WHATWG.HTML.Attribute.Inputmode.attribute == "inputmode")
    }

    @Test(
        "Inputmode cases description should match the spec",
        arguments: WHATWG.HTML.Attribute.Inputmode.allCases
    )
    func cases(inputmode: WHATWG.HTML.Attribute.Inputmode) {
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
        #expect(WHATWG.HTML.Attribute.Inputmode.allCases.count == 8)
        #expect(WHATWG.HTML.Attribute.Inputmode.allCases.contains(.none))
        #expect(WHATWG.HTML.Attribute.Inputmode.allCases.contains(.text))
        #expect(WHATWG.HTML.Attribute.Inputmode.allCases.contains(.decimal))
        #expect(WHATWG.HTML.Attribute.Inputmode.allCases.contains(.numeric))
        #expect(WHATWG.HTML.Attribute.Inputmode.allCases.contains(.tel))
        #expect(WHATWG.HTML.Attribute.Inputmode.allCases.contains(.search))
        #expect(WHATWG.HTML.Attribute.Inputmode.allCases.contains(.email))
        #expect(WHATWG.HTML.Attribute.Inputmode.allCases.contains(.url))
    }

    @Test(arguments: WHATWG.HTML.Attribute.Inputmode.allCases)
    func `Inputmode rawValue should match description`(inputmode: WHATWG.HTML.Attribute.Inputmode) {
        #expect(inputmode.rawValue == inputmode.description)
    }

    @Test(
        arguments: [
            ("none", WHATWG.HTML.Attribute.Inputmode.none),
            ("text", WHATWG.HTML.Attribute.Inputmode.text),
            ("decimal", WHATWG.HTML.Attribute.Inputmode.decimal),
            ("numeric", WHATWG.HTML.Attribute.Inputmode.numeric),
            ("tel", WHATWG.HTML.Attribute.Inputmode.tel),
            ("search", WHATWG.HTML.Attribute.Inputmode.search),
            ("email", WHATWG.HTML.Attribute.Inputmode.email),
            ("url", WHATWG.HTML.Attribute.Inputmode.url),
        ]
    ) func `Inputmode should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Attribute.Inputmode?
    ) {
        #expect(WHATWG.HTML.Attribute.Inputmode(rawValue: input) == expected)
    }
}
