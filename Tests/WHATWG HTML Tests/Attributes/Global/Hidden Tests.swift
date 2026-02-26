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
    @Test func `Hidden attribute should be hidden`() { #expect(Hidden.attribute == "hidden") }

    @Test("Hidden cases description should match the spec", arguments: Hidden.allCases) func cases(
        hidden: Hidden
    ) {
        switch hidden {
        case .hidden: #expect(hidden.description == "hidden")
        case .untilFound: #expect(hidden.description == "until-found")
        case .empty: #expect(hidden.description.isEmpty)
        default: ()
        }
    }

    @Test func `Hidden should conform to CaseIterable`() {
        #expect(Hidden.allCases.count == 3)
        #expect(Hidden.allCases.contains(.hidden))
        #expect(Hidden.allCases.contains(.untilFound))
    }

    @Test("Hidden rawValue should match description", arguments: Hidden.allCases)
    func rawValueMatchesDescription(hidden: Hidden) {
        #expect(hidden.rawValue == hidden.description)
    }

    @Test(
        "Hidden should be initializable from rawValue",
        arguments: [
            ("hidden", Hidden.hidden), ("until-found", Hidden.untilFound),

        ]
    ) func initializableFromRawValue(input: String, expected: Hidden?) {
        #expect(Hidden(rawValue: input) == expected)
    }

    @Test func `Empty Hidden should use default mode`() {
        let hiddenDefault = Hidden()
        #expect(hiddenDefault == .hidden)
    }
}
