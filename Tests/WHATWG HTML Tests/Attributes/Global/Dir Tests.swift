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
        #expect(WHATWG.HTML.Attribute.Dir.attribute == "dir")
    }

    @Test(
        "Dir cases description should match the spec",
        arguments: WHATWG.HTML.Attribute.Dir.allCases
    ) func cases(
        dir: WHATWG.HTML.Attribute.Dir
    ) {
        switch dir {
        case .ltr: #expect(dir.description == "ltr")
        case .rtl: #expect(dir.description == "rtl")
        case .auto: #expect(dir.description == "auto")
        default: ()
        }
    }

    @Test func `Dir should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Attribute.Dir.allCases.count == 3)
        #expect(WHATWG.HTML.Attribute.Dir.allCases.contains(.ltr))
        #expect(WHATWG.HTML.Attribute.Dir.allCases.contains(.rtl))
        #expect(WHATWG.HTML.Attribute.Dir.allCases.contains(.auto))
    }

    @Test(arguments: WHATWG.HTML.Attribute.Dir.allCases)
    func `Dir rawValue should match description`(dir: WHATWG.HTML.Attribute.Dir) {
        #expect(dir.rawValue == dir.description)
    }

    @Test(
        arguments: [
            ("ltr", WHATWG.HTML.Attribute.Dir.ltr), ("rtl", WHATWG.HTML.Attribute.Dir.rtl),
            ("auto", WHATWG.HTML.Attribute.Dir.auto),
        ]
    ) func `Dir should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Attribute.Dir?
    ) {
        #expect(WHATWG.HTML.Attribute.Dir(rawValue: input) == expected)
    }
}
