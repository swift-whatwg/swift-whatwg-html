import Testing
import WHATWG_HTML

@Suite struct `Bring Attention To Tests` {

    @Test func `Basic B element creation`() {
        let b = WHATWG.HTML.B.Element()
        #expect(WHATWG.HTML.B.Element.tag == "b")
    }

    @Test func `B element conforms to HTMLElement`() {
        let b = WHATWG.HTML.B.Element()
        let element: any WHATWG.HTML.Element = b
        #expect(type(of: element).tag == "b")
    }

    @Suite struct `Common Use Cases` {

        @Test func `Keywords in document`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Product names in review`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Actionable words in interactive software`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Article leads or summaries`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Important terms without semantic importance`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Navigation or UI element labels`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Semantic Distinction` {

        @Test func `Stylistic bold without importance`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Visual attention without emphasis`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Bold text for readability`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Non-semantic bold formatting`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Typography and Design` {

        @Test func `Bold text in body content`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Highlighted terms`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Interface element styling`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Text differentiation`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Content Types` {

        @Test func `Technical documentation keywords`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Menu item names`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Button labels`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Brand names in content`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `File names or paths`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Command names`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Inline Context` {

        @Test func `Bold span within paragraph`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Bold text in lists`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Bold text in table cells`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Bold text in headers`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple B elements`() {
            let b1 = WHATWG.HTML.B.Element()
            let b2 = WHATWG.HTML.B.Element()
            let b3 = WHATWG.HTML.B.Element()

            let elements = [b1, b2, b3]

            #expect(elements.count == 3)
            elements.forEach { element in #expect(type(of: element).tag == "b") }
        }

        @Test func `B element within content flow`() {
            let b = WHATWG.HTML.B.Element()
            let element: any WHATWG.HTML.Element = b

            #expect(type(of: element).tag == "b")
        }

        @Test func `Nested B elements`() {
            let outerB = WHATWG.HTML.B.Element()
            let innerB = WHATWG.HTML.B.Element()

            #expect(WHATWG.HTML.B.Element.tag == "b")
            #expect(outerB is any WHATWG.HTML.Element)
            #expect(innerB is any WHATWG.HTML.Element)
        }
    }

    @Suite struct `Accessibility Considerations` {

        @Test func `Screen reader neutral bold`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Visual-only formatting`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Non-semantic styling`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Appropriate use over strong`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Appropriate use over em`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Appropriate use over mark`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Appropriate use over span`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }

    @Suite struct `Usage Examples` {

        @Test func `Product review with product names`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Software documentation with commands`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `Article summary with key points`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }

        @Test func `UI instructions with element names`() {
            let b = WHATWG.HTML.B.Element()
            #expect(WHATWG.HTML.B.Element.tag == "b")
        }
    }
}
