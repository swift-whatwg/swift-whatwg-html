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

@Suite struct `Dir Test` {
    @Test func `Dir attribute should be dir`() {
        #expect(WHATWG.HTML.Dir.Attribute.attribute == "dir")
    }

    @Test(
        "Dir cases description should match the spec",
        arguments: WHATWG.HTML.Dir.Attribute.allCases
    ) func cases(
        dir: WHATWG.HTML.Dir.Attribute
    ) {
        switch dir {
        case .ltr: #expect(dir.description == "ltr")
        case .rtl: #expect(dir.description == "rtl")
        case .auto: #expect(dir.description == "auto")
        default: ()
        }
    }

    @Test func `Dir should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Dir.Attribute.allCases.count == 3)
        #expect(WHATWG.HTML.Dir.Attribute.allCases.contains(.ltr))
        #expect(WHATWG.HTML.Dir.Attribute.allCases.contains(.rtl))
        #expect(WHATWG.HTML.Dir.Attribute.allCases.contains(.auto))
    }

    @Test(arguments: WHATWG.HTML.Dir.Attribute.allCases)
    func `Dir rawValue should match description`(dir: WHATWG.HTML.Dir.Attribute) {
        #expect(dir.rawValue == dir.description)
    }

    @Test(
        arguments: [
            ("ltr", WHATWG.HTML.Dir.Attribute.ltr), ("rtl", WHATWG.HTML.Dir.Attribute.rtl),
            ("auto", WHATWG.HTML.Dir.Attribute.auto),
        ]
    ) func `Dir should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Dir.Attribute?
    ) {
        #expect(WHATWG.HTML.Dir.Attribute(rawValue: input) == expected)
    }
}
