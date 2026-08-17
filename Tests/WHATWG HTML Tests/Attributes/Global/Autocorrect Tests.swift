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

@Suite struct `Autocorrect Test` {
    @Test func `Autocorrect attribute should be autocorrect`() {
        #expect(WHATWG_HTML.Attribute.Autocorrect.attribute == "autocorrect")
    }

    @Test(
        "Autocorrect cases description should match the spec",
        arguments: WHATWG_HTML.Attribute.Autocorrect.allCases
    )
    func cases(autocorrect: WHATWG_HTML.Attribute.Autocorrect) {
        switch autocorrect {
        case .on: #expect(autocorrect.description == "on")
        case .empty: #expect(autocorrect.description == "\"\"")
        case .off: #expect(autocorrect.description == "off")
        default: ()
        }
    }

    @Test func `Autocorrect should conform to CaseIterable`() {
        #expect(WHATWG_HTML.Attribute.Autocorrect.allCases.count == 3)
        #expect(WHATWG_HTML.Attribute.Autocorrect.allCases.contains(.on))
        #expect(WHATWG_HTML.Attribute.Autocorrect.allCases.contains(.empty))
        #expect(WHATWG_HTML.Attribute.Autocorrect.allCases.contains(.off))
    }

    @Test(arguments: WHATWG_HTML.Attribute.Autocorrect.allCases)
    func `Autocorrect rawValue should match description`(
        autocorrect: WHATWG_HTML.Attribute.Autocorrect
    ) {
        #expect(autocorrect.rawValue == autocorrect.description)
    }

    @Test(
        arguments: [
            ("on", WHATWG_HTML.Attribute.Autocorrect.on),
            ("\"\"", WHATWG_HTML.Attribute.Autocorrect.empty),
            ("off", WHATWG_HTML.Attribute.Autocorrect.off),
        ]
    ) func `Autocorrect should be initializable from rawValue`(
        input: String,
        expected: WHATWG_HTML.Attribute.Autocorrect?
    ) {
        #expect(WHATWG_HTML.Attribute.Autocorrect(rawValue: input) == expected)
    }

    @Test func `Autocorrect empty case should have the correct raw value`() {
        #expect(WHATWG_HTML.Attribute.Autocorrect.empty.rawValue == "\"\"")
    }
}
