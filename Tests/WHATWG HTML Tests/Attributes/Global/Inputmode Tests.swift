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
        #expect(WHATWG_HTML.Attribute.Inputmode.attribute == "inputmode")
    }

    @Test(
        "Inputmode cases description should match the spec",
        arguments: WHATWG_HTML.Attribute.Inputmode.allCases
    )
    func cases(inputmode: WHATWG_HTML.Attribute.Inputmode) {
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
        #expect(WHATWG_HTML.Attribute.Inputmode.allCases.count == 8)
        #expect(WHATWG_HTML.Attribute.Inputmode.allCases.contains(.none))
        #expect(WHATWG_HTML.Attribute.Inputmode.allCases.contains(.text))
        #expect(WHATWG_HTML.Attribute.Inputmode.allCases.contains(.decimal))
        #expect(WHATWG_HTML.Attribute.Inputmode.allCases.contains(.numeric))
        #expect(WHATWG_HTML.Attribute.Inputmode.allCases.contains(.tel))
        #expect(WHATWG_HTML.Attribute.Inputmode.allCases.contains(.search))
        #expect(WHATWG_HTML.Attribute.Inputmode.allCases.contains(.email))
        #expect(WHATWG_HTML.Attribute.Inputmode.allCases.contains(.url))
    }

    @Test(arguments: WHATWG_HTML.Attribute.Inputmode.allCases)
    func `Inputmode rawValue should match description`(inputmode: WHATWG_HTML.Attribute.Inputmode) {
        #expect(inputmode.rawValue == inputmode.description)
    }

    @Test(
        arguments: [
            ("none", WHATWG_HTML.Attribute.Inputmode.none),
            ("text", WHATWG_HTML.Attribute.Inputmode.text),
            ("decimal", WHATWG_HTML.Attribute.Inputmode.decimal),
            ("numeric", WHATWG_HTML.Attribute.Inputmode.numeric),
            ("tel", WHATWG_HTML.Attribute.Inputmode.tel),
            ("search", WHATWG_HTML.Attribute.Inputmode.search),
            ("email", WHATWG_HTML.Attribute.Inputmode.email),
            ("url", WHATWG_HTML.Attribute.Inputmode.url),
        ]
    ) func `Inputmode should be initializable from rawValue`(
        input: String,
        expected: WHATWG_HTML.Attribute.Inputmode?
    ) {
        #expect(WHATWG_HTML.Attribute.Inputmode(rawValue: input) == expected)
    }
}
