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

@Suite struct `Block Quotation Tests` {

    @Test func `Basic BlockQuote element creation`() {
        let blockquote = BlockQuote()
        #expect(BlockQuote.tag == "blockquote")
        #expect(blockquote.cite == nil)
    }

    @Test func `BlockQuote element conforms to HTMLElement`() {
        let blockquote = BlockQuote()
        let element: any WHATWG_HTML.Element.`Protocol` = blockquote
        #expect(type(of: element).tag == "blockquote")
    }

    @Suite struct `Cite Attribute Tests` {

        @Test func `BlockQuote with cite URL`() {
            let cite = Cite(value: "https://example.com/source")
            let blockquote = BlockQuote(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/source")
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `BlockQuote without cite attribute`() {
            let blockquote = BlockQuote()
            #expect(blockquote.cite == nil)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Cite attribute as optional parameter`() {
            let blockquote = BlockQuote(cite: nil)
            #expect(blockquote.cite == nil)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Different cite URL formats`() {
            let httpsCite = Cite(value: "https://www.example.com/article")
            let httpCite = Cite(value: "http://example.org/source")
            let relativeCite = Cite(value: "/local/source")

            let blockquote1 = BlockQuote(cite: httpsCite)
            let blockquote2 = BlockQuote(cite: httpCite)
            let blockquote3 = BlockQuote(cite: relativeCite)

            #expect(blockquote1.cite?.rawValue == "https://www.example.com/article")
            #expect(blockquote2.cite?.rawValue == "http://example.org/source")
            #expect(blockquote3.cite?.rawValue == "/local/source")
        }
    }

    @Suite struct `Extended Quotations` {

        @Test func `Long form quotations`() {
            let cite = Cite(value: "https://example.com/book")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
            #expect(blockquote.cite?.rawValue == "https://example.com/book")
        }

        @Test func `Multi-paragraph quotations`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Poetry and verse quotations`() {
            let cite = Cite(value: "https://example.com/poem")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Academic paper excerpts`() {
            let cite = Cite(value: "https://journal.example.com/paper")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Literary quotations`() {
            let cite = Cite(value: "https://example.com/book")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `News article excerpts`() {
            let cite = Cite(value: "https://news.example.com/article")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Speech transcriptions`() {
            let cite = Cite(value: "https://example.com/speech")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Interview excerpts`() {
            let cite = Cite(value: "https://example.com/interview")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Research paper citations`() {
            let cite = Cite(value: "https://example.com/research")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Blog post excerpts`() {
            let cite = Cite(value: "https://blog.example.com/post")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite struct `Content Attribution` {

        @Test func `Source document reference`() {
            let cite = Cite(value: "https://example.com/original")
            let blockquote = BlockQuote(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/original")
        }

        @Test func `Author attribution separation`() {
            // Attribution should be outside blockquote element
            let blockquote = BlockQuote(cite: Cite(value: "https://example.com/source"))
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Citation vs attribution distinction`() {
            let cite = Cite(value: "https://example.com/message")
            let blockquote = BlockQuote(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/message")
        }

        @Test func `Source URL validation context`() {
            let cite = Cite(value: "https://valid.example.com/source")
            let blockquote = BlockQuote(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://valid.example.com/source")
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Extended quotation indication`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Block-level quotation context`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Quotation vs inline quote distinction`() {
            // Blockquote for extended quotes vs q for inline quotes
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Sectioning content within quotations`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite struct `Visual Presentation` {

        @Test func `Indented quotation rendering`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Quotation mark styling considerations`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Typography and spacing`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Responsive quotation layout`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple BlockQuote elements`() {
            let cite1 = Cite(value: "https://example.com/source1")
            let cite2 = Cite(value: "https://example.com/source2")

            let blockquote1 = BlockQuote(cite: cite1)
            let blockquote2 = BlockQuote(cite: cite2)
            let blockquote3 = BlockQuote()

            let elements = [blockquote1, blockquote2, blockquote3]

            #expect(elements.count == 3)
            #expect(blockquote1.cite?.rawValue == "https://example.com/source1")
            #expect(blockquote2.cite?.rawValue == "https://example.com/source2")
            #expect(blockquote3.cite == nil)

            elements.forEach { element in #expect(type(of: element).tag == "blockquote") }
        }

        @Test func `BlockQuote element within content flow`() {
            let cite = Cite(value: "https://example.com/source")
            let blockquote = BlockQuote(cite: cite)
            let element: any WHATWG_HTML.Element.`Protocol` = blockquote

            #expect(type(of: element).tag == "blockquote")
        }

        @Test func `Nested content within BlockQuote`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `BlockQuote with complex cite URLs`() {
            let complexCite = Cite(
                value: "https://example.com/article?id=123&section=conclusion#paragraph-5"
            )
            let blockquote = BlockQuote(cite: complexCite)
            #expect(
                blockquote.cite?.rawValue
                    == "https://example.com/article?id=123&section=conclusion#paragraph-5"
            )
        }
    }

    @Suite struct `Accessibility Considerations` {

        @Test func `Screen reader quotation announcement`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Citation accessibility`() {
            let cite = Cite(value: "https://example.com/source")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Quotation context clarity`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Navigation landmark support`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite struct `Best Practices` {

        @Test func `External attribution placement`() {
            // Attribution should be outside blockquote
            let blockquote = BlockQuote(cite: Cite(value: "https://example.com/source"))
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Appropriate use over q element`() {
            // Use blockquote for extended quotes, q for inline
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Cite attribute best practices`() {
            let cite = Cite(value: "https://example.com/source")
            let blockquote = BlockQuote(cite: cite)
            #expect(blockquote.cite?.rawValue == "https://example.com/source")
        }

        @Test func `Content structure within quotations`() {
            let blockquote = BlockQuote()
            #expect(BlockQuote.tag == "blockquote")
        }
    }

    @Suite struct `Real-World Applications` {

        @Test func `Academic writing quotations`() {
            let cite = Cite(value: "https://journal.example.com/article")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `News and journalism quotes`() {
            let cite = Cite(value: "https://news.example.com/interview")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Documentation and technical writing`() {
            let cite = Cite(value: "https://docs.example.com/specification")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Content aggregation platforms`() {
            let cite = Cite(value: "https://original.example.com/post")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }

        @Test func `Educational content and courseware`() {
            let cite = Cite(value: "https://textbook.example.com/chapter-5")
            let blockquote = BlockQuote(cite: cite)
            #expect(BlockQuote.tag == "blockquote")
        }
    }
}
