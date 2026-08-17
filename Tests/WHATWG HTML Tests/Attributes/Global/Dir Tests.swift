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
    @Test func `Dir attribute should be dir`() { #expect(WHATWG_HTML.Attribute.Dir.attribute == "dir") }

    @Test("Dir cases description should match the spec", arguments: WHATWG_HTML.Attribute.Dir.allCases) func cases(
        dir: WHATWG_HTML.Attribute.Dir
    ) {
        switch dir {
        case .ltr: #expect(dir.description == "ltr")
        case .rtl: #expect(dir.description == "rtl")
        case .auto: #expect(dir.description == "auto")
        default: ()
        }
    }

    @Test func `Dir should conform to CaseIterable`() {
        #expect(WHATWG_HTML.Attribute.Dir.allCases.count == 3)
        #expect(WHATWG_HTML.Attribute.Dir.allCases.contains(.ltr))
        #expect(WHATWG_HTML.Attribute.Dir.allCases.contains(.rtl))
        #expect(WHATWG_HTML.Attribute.Dir.allCases.contains(.auto))
    }

    @Test(arguments: WHATWG_HTML.Attribute.Dir.allCases)
    func `Dir rawValue should match description`(dir: WHATWG_HTML.Attribute.Dir) {
        #expect(dir.rawValue == dir.description)
    }

    @Test(
        arguments: [("ltr", WHATWG_HTML.Attribute.Dir.ltr), ("rtl", WHATWG_HTML.Attribute.Dir.rtl), ("auto", WHATWG_HTML.Attribute.Dir.auto)]
    ) func `Dir should be initializable from rawValue`(input: String, expected: WHATWG_HTML.Attribute.Dir?) {
        #expect(WHATWG_HTML.Attribute.Dir(rawValue: input) == expected)
    }
}
