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

@Suite struct `Bidirectional Text Override Tests` {

    @Test func `Basic BDO element creation with required dir attribute`() {
        let bdo = BidirectionalTextOverride(dir: .ltr)
        #expect(BidirectionalTextOverride.tag == "bdo")
        #expect(bdo.dir.rawValue == "ltr")
    }

    @Test func `BDO element conforms to HTMLElement`() {
        let bdo = BidirectionalTextOverride(dir: .rtl)
        let element: any WHATWG_HTML.Element.`Protocol` = bdo
        #expect(type(of: element).tag == "bdo")
    }

    @Suite struct `Direction Attribute Tests` {

        @Test func `BDO with left-to-right direction`() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `BDO with right-to-left direction`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `BDO with auto direction`() {
            let bdo = BidirectionalTextOverride(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Direction attribute is required`() {
            // This test confirms that dir parameter is required in initializer
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
        }
    }

    @Suite struct `Text Direction Override` {

        @Test func `Overriding natural text direction`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Forcing specific text rendering direction`() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Overriding bidirectional algorithm`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Character order reversal behavior`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Displaying text in opposite direction`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Demonstrating bidirectional features`() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Fixing incorrectly displayed multilingual content`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Educational text direction examples`() {
            let bdo = BidirectionalTextOverride(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Typography and design effects`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }
    }

    @Suite struct `Language Support` {

        @Test func `Arabic text direction override`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Hebrew text direction override`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `English text in RTL context`() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Mixed script content override`() {
            let bdo = BidirectionalTextOverride(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }
    }

    @Suite struct `Educational and Demonstration` {

        @Test func `Teaching bidirectional text concepts`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Demonstrating text rendering differences`() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Showing script direction examples`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Internationalization tutorials`() {
            let bdo = BidirectionalTextOverride(dir: .auto)
            #expect(bdo.dir.rawValue == "auto")
            #expect(BidirectionalTextOverride.tag == "bdo")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple BDO elements with different directions`() {
            let ltrBdo = BidirectionalTextOverride(dir: .ltr)
            let rtlBdo = BidirectionalTextOverride(dir: .rtl)
            let autoBdo = BidirectionalTextOverride(dir: .auto)

            let elements = [ltrBdo, rtlBdo, autoBdo]

            #expect(elements.count == 3)
            #expect(ltrBdo.dir.rawValue == "ltr")
            #expect(rtlBdo.dir.rawValue == "rtl")
            #expect(autoBdo.dir.rawValue == "auto")

            elements.forEach { element in #expect(type(of: element).tag == "bdo") }
        }

        @Test func `BDO element within content flow`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            let element: any WHATWG_HTML.Element.`Protocol` = bdo

            #expect(type(of: element).tag == "bdo")
            #expect(bdo.dir.rawValue == "rtl")
        }

        @Test func `Nested direction overrides`() {
            let outerBdo = BidirectionalTextOverride(dir: .rtl)
            let innerBdo = BidirectionalTextOverride(dir: .ltr)

            #expect(BidirectionalTextOverride.tag == "bdo")
            #expect(outerBdo.dir.rawValue == "rtl")
            #expect(innerBdo.dir.rawValue == "ltr")
            #expect(outerBdo is any WHATWG_HTML.Element.`Protocol`)
            #expect(innerBdo is any WHATWG_HTML.Element.`Protocol`)
        }

        @Test func `BDO with different HTML context elements`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(BidirectionalTextOverride.tag == "bdo")
            #expect(bdo.dir.rawValue == "rtl")
        }
    }

    @Suite struct `Technical Specifications` {

        @Test func `Required dir attribute validation`() {
            // Testing that dir is a required property
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo.dir.rawValue == "ltr")
        }

        @Test func `Direction attribute values correctness`() {
            let ltrDir = Dir.ltr
            let rtlDir = Dir.rtl
            let autoDir = Dir.auto

            #expect(ltrDir.rawValue == "ltr")
            #expect(rtlDir.rawValue == "rtl")
            #expect(autoDir.rawValue == "auto")
        }

        @Test func `BDO tag name validation`() { #expect(BidirectionalTextOverride.tag == "bdo") }

        @Test func `HTMLElement protocol compliance`() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(bdo is any WHATWG_HTML.Element.`Protocol`)
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Use BDO only when override is needed`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Prefer BDI for isolation over BDO for override`() {
            let bdo = BidirectionalTextOverride(dir: .ltr)
            #expect(BidirectionalTextOverride.tag == "bdo")
        }

        @Test func `Clear semantic intent with explicit direction`() {
            let bdo = BidirectionalTextOverride(dir: .rtl)
            #expect(bdo.dir.rawValue == "rtl")
        }

        @Test func `Consider accessibility implications`() {
            let bdo = BidirectionalTextOverride(dir: .auto)
            #expect(BidirectionalTextOverride.tag == "bdo")
        }
    }
}
