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
    @Test func `Popover attribute should be popover`() { #expect(Popover.attribute == "popover") }

    @Test("Popover cases description should match the spec", arguments: Popover.allCases)
    func cases(popover: Popover) {
        switch popover {
        case .auto: #expect(popover.description == "auto")
        case .manual: #expect(popover.description == "manual")
        case .hint: #expect(popover.description == "hint")
        default: ()
        }
    }

    @Test func `Popover should conform to CaseIterable`() {
        #expect(Popover.allCases.count == 3)
        #expect(Popover.allCases.contains(.auto))
        #expect(Popover.allCases.contains(.manual))
        #expect(Popover.allCases.contains(.hint))
    }

    @Test("Popover rawValue should match description", arguments: Popover.allCases)
    func rawValueMatchesDescription(popover: Popover) {
        #expect(popover.rawValue == popover.description)
    }

    @Test(
        "Popover should be initializable from rawValue",
        arguments: [("auto", Popover.auto), ("manual", Popover.manual)]
    ) func initializableFromRawValue(input: String, expected: Popover?) {
        #expect(Popover(rawValue: input) == expected)
    }
}
