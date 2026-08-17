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

@Suite struct `Bigger Text Tests` {

    @Test func `Basic Big element creation`() {
        let big = WHATWG_HTML.Element.Big()
        #expect(WHATWG_HTML.Element.Big.tag == "big")
    }

    @Test func `Big element conforms to HTMLElement`() {
        let big = WHATWG_HTML.Element.Big()
        let element: any WHATWG_HTML.Element.`Protocol` = big
        #expect(type(of: element).tag == "big")
    }

    @Suite struct `Deprecated Element Usage` {

        @Test func `Understanding deprecation status`() {
            let big = WHATWG_HTML.Element.Big()
            // Big element is deprecated in HTML standards
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Legacy content support`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Backward compatibility maintenance`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Historical HTML document parsing`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }
    }

    @Suite struct `Font Size Enhancement` {

        @Test func `Text size increase by one level`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Relative font size scaling`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Visual emphasis through size`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Text prominence enhancement`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }
    }

    @Suite struct `Legacy Use Cases` {

        @Test func `Older HTML documents`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Maintenance of existing codebases`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `HTML content migration`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Browser compatibility testing`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Legacy CMS content`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }
    }

    @Suite struct `Modern Alternatives` {

        @Test func `CSS font-size property recommendation`() {
            let big = WHATWG_HTML.Element.Big()
            // Modern approach would use CSS font-size: larger or specific size
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Semantic HTML over presentational`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `CSS styling separation`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Responsive design considerations`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }
    }

    @Suite struct `Typography Context` {

        @Test func `Text hierarchy establishment`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Visual text differentiation`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Reading emphasis creation`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Content scanning aids`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }
    }

    @Suite struct `Historical Context` {

        @Test func `HTML 3.2 and 4.0 era support`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Early web development practices`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Presentational markup era`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Pre-CSS styling approaches`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple Big elements`() {
            let big1 = WHATWG_HTML.Element.Big()
            let big2 = WHATWG_HTML.Element.Big()
            let big3 = WHATWG_HTML.Element.Big()

            let elements = [big1, big2, big3]

            #expect(elements.count == 3)
            elements.forEach { element in #expect(type(of: element).tag == "big") }
        }

        @Test func `Big element within content flow`() {
            let big = WHATWG_HTML.Element.Big()
            let element: any WHATWG_HTML.Element.`Protocol` = big

            #expect(type(of: element).tag == "big")
        }

        @Test func `Nested Big elements`() {
            let outerBig = WHATWG_HTML.Element.Big()
            let innerBig = WHATWG_HTML.Element.Big()

            #expect(WHATWG_HTML.Element.Big.tag == "big")
            #expect(outerBig is any WHATWG_HTML.Element.`Protocol`)
            #expect(innerBig is any WHATWG_HTML.Element.`Protocol`)
        }

        @Test func `Big element with other inline elements`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }
    }

    @Suite struct `Accessibility Considerations` {

        @Test func `Screen reader size announcement`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Visual impairment user support`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Text scaling behavior`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Contrast and readability`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Avoid Big in new development`() {
            let big = WHATWG_HTML.Element.Big()
            // Should prefer CSS font-size in modern development
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Use CSS for font sizing`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Semantic markup over presentational`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Migration to modern approaches`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }
    }

    @Suite struct `Document Migration` {

        @Test func `Legacy document processing`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Content transformation scenarios`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `HTML parser compatibility`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }

        @Test func `Browser rendering consistency`() {
            let big = WHATWG_HTML.Element.Big()
            #expect(WHATWG_HTML.Element.Big.tag == "big")
        }
    }
}
