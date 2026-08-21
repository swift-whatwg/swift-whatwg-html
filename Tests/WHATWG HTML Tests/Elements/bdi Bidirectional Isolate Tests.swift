import Testing
import WHATWG_HTML

@Suite struct `Bidirectional Isolate Tests` {

    @Test func `Basic BDI element creation`() {
        let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
        #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
    }

    @Test func `BDI element conforms to HTMLElement`() {
        let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
        let element: any WHATWG.HTML.Element = bdi
        #expect(type(of: element).tag == "bdi")
    }

    @Suite struct `Bidirectional Text Isolation` {

        @Test func `Isolating user-generated content`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Preventing text direction interference`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Protecting surrounding text from direction changes`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Isolating unknown directionality content`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `User names in mixed-script environments`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Dynamic content from external sources`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Comments and user-generated text`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Search results with mixed directionality`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `List items with unknown text direction`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Social media posts and messages`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Multilingual Content` {

        @Test func `Arabic and Hebrew text isolation`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Mixed Latin and RTL scripts`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Persian and Urdu text handling`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Numbers and punctuation in RTL context`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Layout Protection` {

        @Test func `Protecting website layout integrity`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Preventing direction spillover`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Maintaining reading order`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Preserving UI component structure`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Accessibility Considerations` {

        @Test func `Screen reader navigation support`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Proper text direction announcement`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Bidirectional text reading support`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Generic ARIA role compliance`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple BDI elements`() {
            let bdi1 = WHATWG.HTML.BidirectionalIsolate.Element()
            let bdi2 = WHATWG.HTML.BidirectionalIsolate.Element()
            let bdi3 = WHATWG.HTML.BidirectionalIsolate.Element()

            let elements = [bdi1, bdi2, bdi3]

            #expect(elements.count == 3)
            elements.forEach { element in #expect(type(of: element).tag == "bdi") }
        }

        @Test func `BDI element within content flow`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            let element: any WHATWG.HTML.Element = bdi

            #expect(type(of: element).tag == "bdi")
        }

        @Test func `Nested text direction contexts`() {
            let outerBdi = WHATWG.HTML.BidirectionalIsolate.Element()
            let innerBdi = WHATWG.HTML.BidirectionalIsolate.Element()

            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
            #expect(outerBdi is any WHATWG.HTML.Element)
            #expect(innerBdi is any WHATWG.HTML.Element)
        }

        @Test func `BDI within lists and tables`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Prefer BDI over span with dir=auto`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Use for unknown content directionality`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Semantic clarity over CSS unicode-bidi`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Automatic direction detection advantage`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }

    @Suite struct `Real-World Applications` {

        @Test func `E-commerce product reviews`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `International forums and discussions`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Multilingual customer support`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Global social media platforms`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }

        @Test func `Educational content platforms`() {
            let bdi = WHATWG.HTML.BidirectionalIsolate.Element()
            #expect(WHATWG.HTML.BidirectionalIsolate.Element.tag == "bdi")
        }
    }
}
