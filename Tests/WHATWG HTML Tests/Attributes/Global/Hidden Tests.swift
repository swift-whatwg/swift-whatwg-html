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

@Suite struct `Hidden Test` {
    @Test func `Hidden attribute should be hidden`() {
        #expect(WHATWG.HTML.Attribute.Hidden.attribute == "hidden")
    }

    @Test(
        "Hidden cases description should match the spec",
        arguments: WHATWG.HTML.Attribute.Hidden.allCases
    ) func cases(
        hidden: WHATWG.HTML.Attribute.Hidden
    ) {
        switch hidden {
        case .hidden: #expect(hidden.description == "hidden")
        case .untilFound: #expect(hidden.description == "until-found")
        case .empty: #expect(hidden.description.isEmpty)
        default: ()
        }
    }

    @Test func `Hidden should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Attribute.Hidden.allCases.count == 3)
        #expect(WHATWG.HTML.Attribute.Hidden.allCases.contains(.hidden))
        #expect(WHATWG.HTML.Attribute.Hidden.allCases.contains(.untilFound))
    }

    @Test(arguments: WHATWG.HTML.Attribute.Hidden.allCases)
    func `Hidden rawValue should match description`(hidden: WHATWG.HTML.Attribute.Hidden) {
        #expect(hidden.rawValue == hidden.description)
    }

    @Test(
        arguments: [
            ("hidden", WHATWG.HTML.Attribute.Hidden.hidden),
            ("until-found", WHATWG.HTML.Attribute.Hidden.untilFound),

        ]
    ) func `Hidden should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Attribute.Hidden?
    ) {
        #expect(WHATWG.HTML.Attribute.Hidden(rawValue: input) == expected)
    }

    @Test func `Empty Hidden should use default mode`() {
        let hiddenDefault = WHATWG.HTML.Attribute.Hidden()
        #expect(hiddenDefault == .hidden)
    }
}
