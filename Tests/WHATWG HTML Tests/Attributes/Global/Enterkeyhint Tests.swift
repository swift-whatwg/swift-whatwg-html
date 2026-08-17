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
        #expect(WHATWG.HTML.Enterkeyhint.Attribute.attribute == "enterkeyhint")
    }

    @Test(
        "Enterkeyhint cases description should match the spec",
        arguments: WHATWG.HTML.Enterkeyhint.Attribute.allCases
    )
    func cases(enterkeyhint: WHATWG.HTML.Enterkeyhint.Attribute) {
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
        #expect(WHATWG.HTML.Enterkeyhint.Attribute.allCases.count == 7)
        #expect(WHATWG.HTML.Enterkeyhint.Attribute.allCases.contains(.enter))
        #expect(WHATWG.HTML.Enterkeyhint.Attribute.allCases.contains(.done))
        #expect(WHATWG.HTML.Enterkeyhint.Attribute.allCases.contains(.go))
        #expect(WHATWG.HTML.Enterkeyhint.Attribute.allCases.contains(.next))
        #expect(WHATWG.HTML.Enterkeyhint.Attribute.allCases.contains(.previous))
        #expect(WHATWG.HTML.Enterkeyhint.Attribute.allCases.contains(.search))
        #expect(WHATWG.HTML.Enterkeyhint.Attribute.allCases.contains(.send))
    }

    @Test(arguments: WHATWG.HTML.Enterkeyhint.Attribute.allCases)
    func `Enterkeyhint rawValue should match description`(
        enterkeyhint: WHATWG.HTML.Enterkeyhint.Attribute
    ) {
        #expect(enterkeyhint.rawValue == enterkeyhint.description)
    }

    @Test(
        arguments: [
            ("enter", WHATWG.HTML.Enterkeyhint.Attribute.enter),
            ("done", WHATWG.HTML.Enterkeyhint.Attribute.done),
            ("go", WHATWG.HTML.Enterkeyhint.Attribute.go),
            ("next", WHATWG.HTML.Enterkeyhint.Attribute.next),
            ("previous", WHATWG.HTML.Enterkeyhint.Attribute.previous),
            ("search", WHATWG.HTML.Enterkeyhint.Attribute.search),
            ("send", WHATWG.HTML.Enterkeyhint.Attribute.send),
        ]
    ) func `Enterkeyhint should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Enterkeyhint.Attribute?
    ) {
        #expect(WHATWG.HTML.Enterkeyhint.Attribute(rawValue: input) == expected)
    }
}
