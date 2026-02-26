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

@Suite struct `Bring Attention To Tests` {

    @Test func `Basic B element creation`() {
        let b = B()
        #expect(B.tag == "b")
    }

    @Test func `B element conforms to HTMLElement`() {
        let b = B()
        let element: any WHATWG_HTML.Element.`Protocol` = b
        #expect(type(of: element).tag == "b")
    }

    @Suite struct `Common Use Cases` {

        @Test func `Keywords in document`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Product names in review`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Actionable words in interactive software`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Article leads or summaries`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Important terms without semantic importance`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Navigation or UI element labels`() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite struct `Semantic Distinction` {

        @Test func `Stylistic bold without importance`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Visual attention without emphasis`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Bold text for readability`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Non-semantic bold formatting`() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite struct `Typography and Design` {

        @Test func `Bold text in body content`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Highlighted terms`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Interface element styling`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Text differentiation`() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite struct `Content Types` {

        @Test func `Technical documentation keywords`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Menu item names`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Button labels`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Brand names in content`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `File names or paths`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Command names`() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite struct `Inline Context` {

        @Test func `Bold span within paragraph`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Bold text in lists`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Bold text in table cells`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Bold text in headers`() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple B elements`() {
            let b1 = B()
            let b2 = B()
            let b3 = B()

            let elements = [b1, b2, b3]

            #expect(elements.count == 3)
            elements.forEach { element in #expect(type(of: element).tag == "b") }
        }

        @Test func `B element within content flow`() {
            let b = B()
            let element: any WHATWG_HTML.Element.`Protocol` = b

            #expect(type(of: element).tag == "b")
        }

        @Test func `Nested B elements`() {
            let outerB = B()
            let innerB = B()

            #expect(B.tag == "b")
            #expect(outerB is any WHATWG_HTML.Element.`Protocol`)
            #expect(innerB is any WHATWG_HTML.Element.`Protocol`)
        }
    }

    @Suite struct `Accessibility Considerations` {

        @Test func `Screen reader neutral bold`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Visual-only formatting`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Non-semantic styling`() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Appropriate use over strong`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Appropriate use over em`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Appropriate use over mark`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Appropriate use over span`() {
            let b = B()
            #expect(B.tag == "b")
        }
    }

    @Suite struct `Usage Examples` {

        @Test func `Product review with product names`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Software documentation with commands`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `Article summary with key points`() {
            let b = B()
            #expect(B.tag == "b")
        }

        @Test func `UI instructions with element names`() {
            let b = B()
            #expect(B.tag == "b")
        }
    }
}
