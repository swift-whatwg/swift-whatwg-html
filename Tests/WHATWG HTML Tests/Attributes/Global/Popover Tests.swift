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

@Suite struct `Popover Test` {
    @Test func `Popover attribute should be popover`() {
        #expect(WHATWG.HTML.Attribute.Popover.attribute == "popover")
    }

    @Test(
        "Popover cases description should match the spec",
        arguments: WHATWG.HTML.Attribute.Popover.allCases
    )
    func cases(popover: WHATWG.HTML.Attribute.Popover) {
        switch popover {
        case .auto: #expect(popover.description == "auto")
        case .manual: #expect(popover.description == "manual")
        case .hint: #expect(popover.description == "hint")
        default: ()
        }
    }

    @Test func `Popover should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Attribute.Popover.allCases.count == 3)
        #expect(WHATWG.HTML.Attribute.Popover.allCases.contains(.auto))
        #expect(WHATWG.HTML.Attribute.Popover.allCases.contains(.manual))
        #expect(WHATWG.HTML.Attribute.Popover.allCases.contains(.hint))
    }

    @Test(arguments: WHATWG.HTML.Attribute.Popover.allCases)
    func `Popover rawValue should match description`(popover: WHATWG.HTML.Attribute.Popover) {
        #expect(popover.rawValue == popover.description)
    }

    @Test(
        arguments: [
            ("auto", WHATWG.HTML.Attribute.Popover.auto),
            ("manual", WHATWG.HTML.Attribute.Popover.manual),
        ]
    ) func `Popover should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Attribute.Popover?
    ) {
        #expect(WHATWG.HTML.Attribute.Popover(rawValue: input) == expected)
    }
}
