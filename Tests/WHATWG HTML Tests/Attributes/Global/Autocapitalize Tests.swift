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

@Suite struct `Autocapitalize Test` {
    @Test func `Autocapitalize attribute should be autocapitalize`() {
        #expect(WHATWG.HTML.Attribute.Autocapitalize.attribute == "autocapitalize")
    }

    @Test(
        "Autocapitalize cases description should match the spec",
        arguments: WHATWG.HTML.Attribute.Autocapitalize.allCases
    ) func cases(autocapitalize: WHATWG.HTML.Attribute.Autocapitalize) {
        switch autocapitalize {
        case .none: #expect(autocapitalize.description == "none")
        case .off: #expect(autocapitalize.description == "off")
        case .sentences: #expect(autocapitalize.description == "sentences")
        case .on: #expect(autocapitalize.description == "on")
        case .words: #expect(autocapitalize.description == "words")
        case .characters: #expect(autocapitalize.description == "characters")
        default: ()
        }
    }

    @Test func `Autocapitalize should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Attribute.Autocapitalize.allCases.count == 6)
        #expect(WHATWG.HTML.Attribute.Autocapitalize.allCases.contains(.none))
        #expect(WHATWG.HTML.Attribute.Autocapitalize.allCases.contains(.off))
        #expect(WHATWG.HTML.Attribute.Autocapitalize.allCases.contains(.sentences))
        #expect(WHATWG.HTML.Attribute.Autocapitalize.allCases.contains(.on))
        #expect(WHATWG.HTML.Attribute.Autocapitalize.allCases.contains(.words))
        #expect(WHATWG.HTML.Attribute.Autocapitalize.allCases.contains(.characters))
    }

    @Test(arguments: WHATWG.HTML.Attribute.Autocapitalize.allCases)
    func `Autocapitalize rawValue should match description`(
        autocapitalize: WHATWG.HTML.Attribute.Autocapitalize
    ) {
        #expect(autocapitalize.rawValue == autocapitalize.description)
    }

    @Test(
        arguments: [
            ("none", WHATWG.HTML.Attribute.Autocapitalize.none), ("off", .off),
            ("sentences", .sentences), ("on", .on),
            ("words", .words), ("characters", .characters),
        ]
    ) func `Autocapitalize should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Attribute.Autocapitalize?
    ) {
        #expect(WHATWG.HTML.Attribute.Autocapitalize(rawValue: input) == expected)
    }
}
