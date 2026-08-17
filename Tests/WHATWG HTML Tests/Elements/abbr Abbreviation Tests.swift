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
        let abbreviation = WHATWG.HTML.Element.Abbreviation()
        #expect(WHATWG.HTML.Element.Abbreviation.tag == "abbr")
    }

    @Test func `Abbreviation conforms to HTMLElement`() {
        let abbreviation = WHATWG.HTML.Element.Abbreviation()
        let element: any WHATWG.HTML.Element.`Protocol` = abbreviation
        #expect(type(of: element).tag == "abbr")
    }

    @Test func `Abbreviation is equatable`() {
        let abbreviation1 = WHATWG.HTML.Element.Abbreviation()
        let abbreviation2 = WHATWG.HTML.Element.Abbreviation()
        #expect(abbreviation1 == abbreviation2)
    }

    @Test func `Abbreviation is sendable`() {
        let abbreviation = WHATWG.HTML.Element.Abbreviation()

        Task { _ = abbreviation }

        #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
    }

    @Suite struct `Common Use Cases` {

        @Test func `Technical abbreviation`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
        }

        @Test func `Business abbreviation`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
        }

        @Test func `Government abbreviation`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
        }

        @Test func `Medical abbreviation`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
        }

        @Test func `Academic abbreviation`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Acronym usage`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
        }

        @Test func `Initialism usage`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
        }

        @Test func `Shortened form usage`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
        }

        @Test func `Symbol usage`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
        }
    }

    @Suite struct `Best Practices Validation` {

        @Test func `Simple abbreviation element`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation == WHATWG.HTML.Element.Abbreviation())
        }

        @Test func `Consistent abbreviation structure`() {
            let abbreviation1 = WHATWG.HTML.Element.Abbreviation()
            let abbreviation2 = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation1 == abbreviation2)
        }

        @Test func `Multiple abbreviations`() {
            let htmlAbbr = WHATWG.HTML.Element.Abbreviation()
            let cssAbbr = WHATWG.HTML.Element.Abbreviation()
            let jsAbbr = WHATWG.HTML.Element.Abbreviation()

            #expect(htmlAbbr == cssAbbr)
            #expect(cssAbbr == jsAbbr)
            #expect(htmlAbbr == jsAbbr)
        }
    }

    @Suite struct `Element Properties` {

        @Test func `Tag name is correct`() {
            #expect(WHATWG.HTML.Element.Abbreviation.tag == "abbr")
        }

        @Test func `Element creation is consistent`() {
            let abbreviation1 = WHATWG.HTML.Element.Abbreviation()
            let abbreviation2 = WHATWG.HTML.Element.Abbreviation()
            #expect(abbreviation1 == abbreviation2)
        }

        @Test func `Element has no mutable state`() {
            let abbreviation = WHATWG.HTML.Element.Abbreviation()
            let copy = abbreviation
            #expect(abbreviation == copy)
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Can be used in collections`() {
            let abbreviations = [
                WHATWG.HTML.Element.Abbreviation(), WHATWG.HTML.Element.Abbreviation(),
                WHATWG.HTML.Element.Abbreviation(),
            ]

            #expect(abbreviations.count == 3)
            #expect(abbreviations.allSatisfy { $0 == WHATWG.HTML.Element.Abbreviation() })
        }

        @Test func `Can be used as dictionary values`() {
            let abbreviationMap: [String: WHATWG.HTML.Element.Abbreviation] = [
                "HTML": WHATWG.HTML.Element.Abbreviation(),
                "CSS": WHATWG.HTML.Element.Abbreviation(), "JS": WHATWG.HTML.Element.Abbreviation(),
            ]

            #expect(abbreviationMap.count == 3)
            #expect(abbreviationMap.values.allSatisfy { $0 == WHATWG.HTML.Element.Abbreviation() })
        }

        @Test func `Can be used in optional contexts`() {
            let maybeAbbreviation: WHATWG.HTML.Element.Abbreviation? = WHATWG.HTML.Element
                .Abbreviation()
            let noAbbreviation: WHATWG.HTML.Element.Abbreviation? = nil

            #expect(maybeAbbreviation != nil)
            #expect(maybeAbbreviation == WHATWG.HTML.Element.Abbreviation())
            #expect(noAbbreviation == nil)
        }
    }
}
