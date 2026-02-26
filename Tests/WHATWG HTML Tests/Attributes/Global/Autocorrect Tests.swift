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
        #expect(Autocorrect.attribute == "autocorrect")
    }

    @Test("Autocorrect cases description should match the spec", arguments: Autocorrect.allCases)
    func cases(autocorrect: Autocorrect) {
        switch autocorrect {
        case .on: #expect(autocorrect.description == "on")
        case .empty: #expect(autocorrect.description == "\"\"")
        case .off: #expect(autocorrect.description == "off")
        default: ()
        }
    }

    @Test func `Autocorrect should conform to CaseIterable`() {
        #expect(Autocorrect.allCases.count == 3)
        #expect(Autocorrect.allCases.contains(.on))
        #expect(Autocorrect.allCases.contains(.empty))
        #expect(Autocorrect.allCases.contains(.off))
    }

    @Test("Autocorrect rawValue should match description", arguments: Autocorrect.allCases)
    func rawValueMatchesDescription(autocorrect: Autocorrect) {
        #expect(autocorrect.rawValue == autocorrect.description)
    }

    @Test(
        "Autocorrect should be initializable from rawValue",
        arguments: [("on", Autocorrect.on), ("\"\"", Autocorrect.empty), ("off", Autocorrect.off)]
    ) func initializableFromRawValue(input: String, expected: Autocorrect?) {
        #expect(Autocorrect(rawValue: input) == expected)
    }

    @Test func `Autocorrect empty case should have the correct raw value`() {
        #expect(Autocorrect.empty.rawValue == "\"\"")
    }
}
