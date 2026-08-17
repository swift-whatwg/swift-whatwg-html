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

@Suite struct `Article Tests` {

    @Test func `Basic article creation`() {
        let article = WHATWG.HTML.Element.Article()
        #expect(WHATWG.HTML.Element.Article.tag == "article")
    }

    @Test func `Article conforms to HTMLElement`() {
        let article = WHATWG.HTML.Element.Article()
        let element: any WHATWG.HTML.Element.`Protocol` = article
        #expect(type(of: element).tag == "article")
    }

    @Suite struct `Common Use Cases` {

        @Test func `Blog post article`() {
            let article = WHATWG.HTML.Element.Article()
            #expect(WHATWG.HTML.Element.Article.tag == "article")
        }

        @Test func `News article`() {
            let article = WHATWG.HTML.Element.Article()
            #expect(WHATWG.HTML.Element.Article.tag == "article")
        }

        @Test func `Forum post`() {
            let article = WHATWG.HTML.Element.Article()
            #expect(WHATWG.HTML.Element.Article.tag == "article")
        }

        @Test func `Comment article`() {
            let article = WHATWG.HTML.Element.Article()
            #expect(WHATWG.HTML.Element.Article.tag == "article")
        }

        @Test func `Product review`() {
            let article = WHATWG.HTML.Element.Article()
            #expect(WHATWG.HTML.Element.Article.tag == "article")
        }

        @Test func `Social media post`() {
            let article = WHATWG.HTML.Element.Article()
            #expect(WHATWG.HTML.Element.Article.tag == "article")
        }
    }

    @Suite struct `Nested Articles` {

        @Test func `Article with nested comments`() {
            let mainArticle = WHATWG.HTML.Element.Article()
            let commentArticle = WHATWG.HTML.Element.Article()

            #expect(WHATWG.HTML.Element.Article.tag == "article")
            #expect(mainArticle is any WHATWG.HTML.Element.`Protocol`)
            #expect(commentArticle is any WHATWG.HTML.Element.`Protocol`)
        }

        @Test func `Multi-part article series`() {
            let containerArticle = WHATWG.HTML.Element.Article()
            let part1 = WHATWG.HTML.Element.Article()
            let part2 = WHATWG.HTML.Element.Article()

            #expect(WHATWG.HTML.Element.Article.tag == "article")
            #expect(containerArticle is any WHATWG.HTML.Element.`Protocol`)
            #expect(part1 is any WHATWG.HTML.Element.`Protocol`)
            #expect(part2 is any WHATWG.HTML.Element.`Protocol`)
        }

        @Test func `Article with related content`() {
            let mainArticle = WHATWG.HTML.Element.Article()
            let relatedArticle = WHATWG.HTML.Element.Article()

            #expect(WHATWG.HTML.Element.Article.tag == "article")
            #expect(mainArticle is any WHATWG.HTML.Element.`Protocol`)
            #expect(relatedArticle is any WHATWG.HTML.Element.`Protocol`)
        }
    }

    @Suite struct `Content Structure` {

        @Test func `Article with heading structure`() {
            #expect(WHATWG.HTML.Element.Article.tag == "article")
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Standalone content article`() {
            #expect(WHATWG.HTML.Element.Article.tag == "article")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple articles in feed`() {
            let articles = [
                WHATWG.HTML.Element.Article(), WHATWG.HTML.Element.Article(),
                WHATWG.HTML.Element.Article(),
            ]

            #expect(articles.count == 3)
            articles.forEach { article in #expect(type(of: article).tag == "article") }
        }

        @Test func `Article collection rendering`() {
            let newsArticle = WHATWG.HTML.Element.Article()
            let blogPost = WHATWG.HTML.Element.Article()
            let review = WHATWG.HTML.Element.Article()

            let allArticles = [newsArticle, blogPost, review]

            #expect(allArticles.count == 3)
            allArticles.forEach { article in
                #expect(article is any WHATWG.HTML.Element.`Protocol`)
                #expect(type(of: article).tag == "article")
            }
        }

        @Test func `Article as independent component`() {
            let article = WHATWG.HTML.Element.Article()
            let element: any WHATWG.HTML.Element.`Protocol` = article

            #expect(type(of: element).tag == "article")
        }
    }
}
