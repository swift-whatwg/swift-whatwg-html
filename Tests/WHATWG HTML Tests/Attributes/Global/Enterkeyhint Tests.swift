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

@Suite struct `Enterkeyhint Test` {
    @Test func `Enterkeyhint attribute should be enterkeyhint`() {
        #expect(WHATWG_HTML.Attribute.Enterkeyhint.attribute == "enterkeyhint")
    }

    @Test(
        "Enterkeyhint cases description should match the spec",
        arguments: WHATWG_HTML.Attribute.Enterkeyhint.allCases
    )
    func cases(enterkeyhint: WHATWG_HTML.Attribute.Enterkeyhint) {
        switch enterkeyhint {
        case .enter: #expect(enterkeyhint.description == "enter")
        case .done: #expect(enterkeyhint.description == "done")
        case .go: #expect(enterkeyhint.description == "go")
        case .next: #expect(enterkeyhint.description == "next")
        case .previous: #expect(enterkeyhint.description == "previous")
        case .search: #expect(enterkeyhint.description == "search")
        case .send: #expect(enterkeyhint.description == "send")
        default: ()
        }
    }

    @Test func `Enterkeyhint should conform to CaseIterable`() {
        #expect(WHATWG_HTML.Attribute.Enterkeyhint.allCases.count == 7)
        #expect(WHATWG_HTML.Attribute.Enterkeyhint.allCases.contains(.enter))
        #expect(WHATWG_HTML.Attribute.Enterkeyhint.allCases.contains(.done))
        #expect(WHATWG_HTML.Attribute.Enterkeyhint.allCases.contains(.go))
        #expect(WHATWG_HTML.Attribute.Enterkeyhint.allCases.contains(.next))
        #expect(WHATWG_HTML.Attribute.Enterkeyhint.allCases.contains(.previous))
        #expect(WHATWG_HTML.Attribute.Enterkeyhint.allCases.contains(.search))
        #expect(WHATWG_HTML.Attribute.Enterkeyhint.allCases.contains(.send))
    }

    @Test(arguments: WHATWG_HTML.Attribute.Enterkeyhint.allCases)
    func `Enterkeyhint rawValue should match description`(
        enterkeyhint: WHATWG_HTML.Attribute.Enterkeyhint
    ) {
        #expect(enterkeyhint.rawValue == enterkeyhint.description)
    }

    @Test(
        arguments: [
            ("enter", WHATWG_HTML.Attribute.Enterkeyhint.enter),
            ("done", WHATWG_HTML.Attribute.Enterkeyhint.done),
            ("go", WHATWG_HTML.Attribute.Enterkeyhint.go),
            ("next", WHATWG_HTML.Attribute.Enterkeyhint.next),
            ("previous", WHATWG_HTML.Attribute.Enterkeyhint.previous),
            ("search", WHATWG_HTML.Attribute.Enterkeyhint.search),
            ("send", WHATWG_HTML.Attribute.Enterkeyhint.send),
        ]
    ) func `Enterkeyhint should be initializable from rawValue`(
        input: String,
        expected: WHATWG_HTML.Attribute.Enterkeyhint?
    ) {
        #expect(WHATWG_HTML.Attribute.Enterkeyhint(rawValue: input) == expected)
    }
}
