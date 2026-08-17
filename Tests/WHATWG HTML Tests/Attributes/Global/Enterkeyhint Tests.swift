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
        #expect(WHATWG.HTML.Attribute.Enterkeyhint.attribute == "enterkeyhint")
    }

    @Test(
        "Enterkeyhint cases description should match the spec",
        arguments: WHATWG.HTML.Attribute.Enterkeyhint.allCases
    )
    func cases(enterkeyhint: WHATWG.HTML.Attribute.Enterkeyhint) {
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
        #expect(WHATWG.HTML.Attribute.Enterkeyhint.allCases.count == 7)
        #expect(WHATWG.HTML.Attribute.Enterkeyhint.allCases.contains(.enter))
        #expect(WHATWG.HTML.Attribute.Enterkeyhint.allCases.contains(.done))
        #expect(WHATWG.HTML.Attribute.Enterkeyhint.allCases.contains(.go))
        #expect(WHATWG.HTML.Attribute.Enterkeyhint.allCases.contains(.next))
        #expect(WHATWG.HTML.Attribute.Enterkeyhint.allCases.contains(.previous))
        #expect(WHATWG.HTML.Attribute.Enterkeyhint.allCases.contains(.search))
        #expect(WHATWG.HTML.Attribute.Enterkeyhint.allCases.contains(.send))
    }

    @Test(arguments: WHATWG.HTML.Attribute.Enterkeyhint.allCases)
    func `Enterkeyhint rawValue should match description`(
        enterkeyhint: WHATWG.HTML.Attribute.Enterkeyhint
    ) {
        #expect(enterkeyhint.rawValue == enterkeyhint.description)
    }

    @Test(
        arguments: [
            ("enter", WHATWG.HTML.Attribute.Enterkeyhint.enter),
            ("done", WHATWG.HTML.Attribute.Enterkeyhint.done),
            ("go", WHATWG.HTML.Attribute.Enterkeyhint.go),
            ("next", WHATWG.HTML.Attribute.Enterkeyhint.next),
            ("previous", WHATWG.HTML.Attribute.Enterkeyhint.previous),
            ("search", WHATWG.HTML.Attribute.Enterkeyhint.search),
            ("send", WHATWG.HTML.Attribute.Enterkeyhint.send),
        ]
    ) func `Enterkeyhint should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Attribute.Enterkeyhint?
    ) {
        #expect(WHATWG.HTML.Attribute.Enterkeyhint(rawValue: input) == expected)
    }
}
