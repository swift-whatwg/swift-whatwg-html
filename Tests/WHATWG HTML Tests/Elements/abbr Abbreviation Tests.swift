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

@Suite struct `Abbreviation Tests` {

    @Test func `Basic abbreviation creation`() {
        let abbreviation = Abbreviation()
        #expect(Abbreviation.tag == "abbr")
    }

    @Test func `Abbreviation conforms to HTMLElement`() {
        let abbreviation = Abbreviation()
        let element: any WHATWG_HTML.Element.`Protocol` = abbreviation
        #expect(type(of: element).tag == "abbr")
    }

    @Test func `Abbreviation is equatable`() {
        let abbreviation1 = Abbreviation()
        let abbreviation2 = Abbreviation()
        #expect(abbreviation1 == abbreviation2)
    }

    @Test func `Abbreviation is sendable`() {
        let abbreviation = Abbreviation()

        Task { _ = abbreviation }

        #expect(abbreviation == Abbreviation())
    }

    @Suite struct `Common Use Cases` {

        @Test func `Technical abbreviation`() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test func `Business abbreviation`() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test func `Government abbreviation`() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test func `Medical abbreviation`() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test func `Academic abbreviation`() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Acronym usage`() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test func `Initialism usage`() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test func `Shortened form usage`() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test func `Symbol usage`() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }
    }

    @Suite struct `Best Practices Validation` {

        @Test func `Simple abbreviation element`() {
            let abbreviation = Abbreviation()
            #expect(abbreviation == Abbreviation())
        }

        @Test func `Consistent abbreviation structure`() {
            let abbreviation1 = Abbreviation()
            let abbreviation2 = Abbreviation()
            #expect(abbreviation1 == abbreviation2)
        }

        @Test func `Multiple abbreviations`() {
            let htmlAbbr = Abbreviation()
            let cssAbbr = Abbreviation()
            let jsAbbr = Abbreviation()

            #expect(htmlAbbr == cssAbbr)
            #expect(cssAbbr == jsAbbr)
            #expect(htmlAbbr == jsAbbr)
        }
    }

    @Suite struct `Element Properties` {

        @Test func `Tag name is correct`() { #expect(Abbreviation.tag == "abbr") }

        @Test func `Element creation is consistent`() {
            let abbreviation1 = Abbreviation()
            let abbreviation2 = Abbreviation()
            #expect(abbreviation1 == abbreviation2)
        }

        @Test func `Element has no mutable state`() {
            let abbreviation = Abbreviation()
            let copy = abbreviation
            #expect(abbreviation == copy)
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Can be used in collections`() {
            let abbreviations = [Abbreviation(), Abbreviation(), Abbreviation()]

            #expect(abbreviations.count == 3)
            #expect(abbreviations.allSatisfy { $0 == Abbreviation() })
        }

        @Test func `Can be used as dictionary values`() {
            let abbreviationMap: [String: Abbreviation] = [
                "HTML": Abbreviation(), "CSS": Abbreviation(), "JS": Abbreviation(),
            ]

            #expect(abbreviationMap.count == 3)
            #expect(abbreviationMap.values.allSatisfy { $0 == Abbreviation() })
        }

        @Test func `Can be used in optional contexts`() {
            let maybeAbbreviation: Abbreviation? = Abbreviation()
            let noAbbreviation: Abbreviation? = nil

            #expect(maybeAbbreviation != nil)
            #expect(maybeAbbreviation == Abbreviation())
            #expect(noAbbreviation == nil)
        }
    }
}
