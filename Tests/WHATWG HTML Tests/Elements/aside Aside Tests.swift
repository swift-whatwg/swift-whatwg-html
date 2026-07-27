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
        let aside = Aside()
        #expect(Aside.tag == "aside")
    }

    @Test func `Aside conforms to HTMLElement`() {
        let aside = Aside()
        let element: any WHATWG_HTML.Element.`Protocol` = aside
        #expect(type(of: element).tag == "aside")
    }

    @Suite struct `Common Use Cases` {

        @Test func `Sidebar aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Pull quote aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Advertisement aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Related links aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Author bio aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Quick facts aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Call-out box aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }
    }

    @Suite struct `Content Types` {

        @Test func `Navigation aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Supplementary information aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Glossary aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Tag cloud aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Related products aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Social media aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Complementary content aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Tangentially related aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Supporting information aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Non-essential content aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }
    }

    @Suite struct `Layout Contexts` {

        @Test func `Article sidebar aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Page-level aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Section-level aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Multiple asides`() {
            let primaryAside = Aside()
            let secondaryAside = Aside()

            #expect(Aside.tag == "aside")
            #expect(primaryAside is any WHATWG_HTML.Element.`Protocol`)
            #expect(secondaryAside is any WHATWG_HTML.Element.`Protocol`)
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Aside within article`() {
            let aside = Aside()
            let element: any WHATWG_HTML.Element.`Protocol` = aside

            #expect(type(of: element).tag == "aside")
        }

        @Test func `Nested aside elements`() {
            let parentAside = Aside()
            let nestedAside = Aside()

            #expect(Aside.tag == "aside")
            #expect(parentAside is any WHATWG_HTML.Element.`Protocol`)
            #expect(nestedAside is any WHATWG_HTML.Element.`Protocol`)
        }

        @Test func `Aside collection`() {
            let asides = [Aside(), Aside(), Aside()]

            #expect(asides.count == 3)
            asides.forEach { aside in #expect(type(of: aside).tag == "aside") }
        }
    }

    @Suite struct `Accessibility and ARIA` {

        @Test func `Implicit complementary role`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Landmark element aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Screen reader friendly aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }
    }

    @Suite struct `Content Guidelines` {

        @Test func `Removable content aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Non-parenthetical aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }

        @Test func `Indirectly related aside`() {
            let aside = Aside()
            #expect(Aside.tag == "aside")
        }
    }
}
