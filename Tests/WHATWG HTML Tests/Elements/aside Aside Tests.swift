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

@Suite struct `Aside Tests` {

    @Test func `Basic aside creation`() {
        let aside = WHATWG.HTML.Aside.Element()
        #expect(WHATWG.HTML.Aside.Element.tag == "aside")
    }

    @Test func `Aside conforms to HTMLElement`() {
        let aside = WHATWG.HTML.Aside.Element()
        let element: any WHATWG.HTML.Element = aside
        #expect(type(of: element).tag == "aside")
    }

    @Suite struct `Common Use Cases` {

        @Test func `Sidebar aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Pull quote aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Advertisement aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Related links aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Author bio aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Quick facts aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Call-out box aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }

    @Suite struct `Content Types` {

        @Test func `Navigation aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Supplementary information aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Glossary aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Tag cloud aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Related products aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Social media aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Complementary content aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Tangentially related aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Supporting information aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Non-essential content aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }

    @Suite struct `Layout Contexts` {

        @Test func `Article sidebar aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Page-level aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Section-level aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Multiple asides`() {
            let primaryAside = WHATWG.HTML.Aside.Element()
            let secondaryAside = WHATWG.HTML.Aside.Element()

            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
            #expect(primaryAside is any WHATWG.HTML.Element)
            #expect(secondaryAside is any WHATWG.HTML.Element)
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Aside within article`() {
            let aside = WHATWG.HTML.Aside.Element()
            let element: any WHATWG.HTML.Element = aside

            #expect(type(of: element).tag == "aside")
        }

        @Test func `Nested aside elements`() {
            let parentAside = WHATWG.HTML.Aside.Element()
            let nestedAside = WHATWG.HTML.Aside.Element()

            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
            #expect(parentAside is any WHATWG.HTML.Element)
            #expect(nestedAside is any WHATWG.HTML.Element)
        }

        @Test func `Aside collection`() {
            let asides = [
                WHATWG.HTML.Aside.Element(), WHATWG.HTML.Aside.Element(),
                WHATWG.HTML.Aside.Element(),
            ]

            #expect(asides.count == 3)
            asides.forEach { aside in #expect(type(of: aside).tag == "aside") }
        }
    }

    @Suite struct `Accessibility and ARIA` {

        @Test func `Implicit complementary role`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Landmark element aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Screen reader friendly aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }

    @Suite struct `Content Guidelines` {

        @Test func `Removable content aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Non-parenthetical aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }

        @Test func `Indirectly related aside`() {
            let aside = WHATWG.HTML.Aside.Element()
            #expect(WHATWG.HTML.Aside.Element.tag == "aside")
        }
    }
}
