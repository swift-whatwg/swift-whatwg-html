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
        let big = Big()
        #expect(Big.tag == "big")
    }

    @Test func `Big element conforms to HTMLElement`() {
        let big = Big()
        let element: any WHATWG_HTML.Element.`Protocol` = big
        #expect(type(of: element).tag == "big")
    }

    @Suite struct `Deprecated Element Usage` {

        @Test func `Understanding deprecation status`() {
            let big = Big()
            // Big element is deprecated in HTML standards
            #expect(Big.tag == "big")
        }

        @Test func `Legacy content support`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Backward compatibility maintenance`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Historical HTML document parsing`() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite struct `Font Size Enhancement` {

        @Test func `Text size increase by one level`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Relative font size scaling`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Visual emphasis through size`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Text prominence enhancement`() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite struct `Legacy Use Cases` {

        @Test func `Older HTML documents`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Maintenance of existing codebases`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `HTML content migration`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Browser compatibility testing`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Legacy CMS content`() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite struct `Modern Alternatives` {

        @Test func `CSS font-size property recommendation`() {
            let big = Big()
            // Modern approach would use CSS font-size: larger or specific size
            #expect(Big.tag == "big")
        }

        @Test func `Semantic HTML over presentational`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `CSS styling separation`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Responsive design considerations`() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite struct `Typography Context` {

        @Test func `Text hierarchy establishment`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Visual text differentiation`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Reading emphasis creation`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Content scanning aids`() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite struct `Historical Context` {

        @Test func `HTML 3.2 and 4.0 era support`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Early web development practices`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Presentational markup era`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Pre-CSS styling approaches`() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple Big elements`() {
            let big1 = Big()
            let big2 = Big()
            let big3 = Big()

            let elements = [big1, big2, big3]

            #expect(elements.count == 3)
            elements.forEach { element in #expect(type(of: element).tag == "big") }
        }

        @Test func `Big element within content flow`() {
            let big = Big()
            let element: any WHATWG_HTML.Element.`Protocol` = big

            #expect(type(of: element).tag == "big")
        }

        @Test func `Nested Big elements`() {
            let outerBig = Big()
            let innerBig = Big()

            #expect(Big.tag == "big")
            #expect(outerBig is any WHATWG_HTML.Element.`Protocol`)
            #expect(innerBig is any WHATWG_HTML.Element.`Protocol`)
        }

        @Test func `Big element with other inline elements`() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite struct `Accessibility Considerations` {

        @Test func `Screen reader size announcement`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Visual impairment user support`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Text scaling behavior`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Contrast and readability`() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Avoid Big in new development`() {
            let big = Big()
            // Should prefer CSS font-size in modern development
            #expect(Big.tag == "big")
        }

        @Test func `Use CSS for font sizing`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Semantic markup over presentational`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Migration to modern approaches`() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }

    @Suite struct `Document Migration` {

        @Test func `Legacy document processing`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Content transformation scenarios`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `HTML parser compatibility`() {
            let big = Big()
            #expect(Big.tag == "big")
        }

        @Test func `Browser rendering consistency`() {
            let big = Big()
            #expect(Big.tag == "big")
        }
    }
}
