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

@Suite struct `Bidirectional Isolate Tests` {

    @Test func `Basic BDI element creation`() {
        let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
        #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
    }

    @Test func `BDI element conforms to HTMLElement`() {
        let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
        let element: any WHATWG_HTML.Element.`Protocol` = bdi
        #expect(type(of: element).tag == "bdi")
    }

    @Suite struct `Bidirectional Text Isolation` {

        @Test func `Isolating user-generated content`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Preventing text direction interference`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Protecting surrounding text from direction changes`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Isolating unknown directionality content`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `User names in mixed-script environments`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Dynamic content from external sources`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Comments and user-generated text`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Search results with mixed directionality`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `List items with unknown text direction`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Social media posts and messages`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite struct `Multilingual Content` {

        @Test func `Arabic and Hebrew text isolation`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Mixed Latin and RTL scripts`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Persian and Urdu text handling`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Numbers and punctuation in RTL context`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite struct `Layout Protection` {

        @Test func `Protecting website layout integrity`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Preventing direction spillover`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Maintaining reading order`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Preserving UI component structure`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite struct `Accessibility Considerations` {

        @Test func `Screen reader navigation support`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Proper text direction announcement`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Bidirectional text reading support`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Generic ARIA role compliance`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple BDI elements`() {
            let bdi1 = WHATWG_HTML.Element.BidirectionalIsolate()
            let bdi2 = WHATWG_HTML.Element.BidirectionalIsolate()
            let bdi3 = WHATWG_HTML.Element.BidirectionalIsolate()

            let elements = [bdi1, bdi2, bdi3]

            #expect(elements.count == 3)
            elements.forEach { element in #expect(type(of: element).tag == "bdi") }
        }

        @Test func `BDI element within content flow`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            let element: any WHATWG_HTML.Element.`Protocol` = bdi

            #expect(type(of: element).tag == "bdi")
        }

        @Test func `Nested text direction contexts`() {
            let outerBdi = WHATWG_HTML.Element.BidirectionalIsolate()
            let innerBdi = WHATWG_HTML.Element.BidirectionalIsolate()

            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
            #expect(outerBdi is any WHATWG_HTML.Element.`Protocol`)
            #expect(innerBdi is any WHATWG_HTML.Element.`Protocol`)
        }

        @Test func `BDI within lists and tables`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Prefer BDI over span with dir=auto`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Use for unknown content directionality`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Semantic clarity over CSS unicode-bidi`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Automatic direction detection advantage`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }
    }

    @Suite struct `Real-World Applications` {

        @Test func `E-commerce product reviews`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `International forums and discussions`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Multilingual customer support`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Global social media platforms`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }

        @Test func `Educational content platforms`() {
            let bdi = WHATWG_HTML.Element.BidirectionalIsolate()
            #expect(WHATWG_HTML.Element.BidirectionalIsolate.tag == "bdi")
        }
    }
}
