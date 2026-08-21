import Testing
import WHATWG_HTML

@Suite struct `Article Tests` {

    @Test func `Basic article creation`() {
        let article = WHATWG.HTML.Article.Element()
        #expect(WHATWG.HTML.Article.Element.tag == "article")
    }

    @Test func `Article conforms to HTMLElement`() {
        let article = WHATWG.HTML.Article.Element()
        let element: any WHATWG.HTML.Element = article
        #expect(type(of: element).tag == "article")
    }

    @Suite struct `Common Use Cases` {

        @Test func `Blog post article`() {
            let article = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `News article`() {
            let article = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `Forum post`() {
            let article = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `Comment article`() {
            let article = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `Product review`() {
            let article = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }

        @Test func `Social media post`() {
            let article = WHATWG.HTML.Article.Element()
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }
    }

    @Suite struct `Nested Articles` {

        @Test func `Article with nested comments`() {
            let mainArticle = WHATWG.HTML.Article.Element()
            let commentArticle = WHATWG.HTML.Article.Element()

            #expect(WHATWG.HTML.Article.Element.tag == "article")
            #expect(mainArticle is any WHATWG.HTML.Element)
            #expect(commentArticle is any WHATWG.HTML.Element)
        }

        @Test func `Multi-part article series`() {
            let containerArticle = WHATWG.HTML.Article.Element()
            let part1 = WHATWG.HTML.Article.Element()
            let part2 = WHATWG.HTML.Article.Element()

            #expect(WHATWG.HTML.Article.Element.tag == "article")
            #expect(containerArticle is any WHATWG.HTML.Element)
            #expect(part1 is any WHATWG.HTML.Element)
            #expect(part2 is any WHATWG.HTML.Element)
        }

        @Test func `Article with related content`() {
            let mainArticle = WHATWG.HTML.Article.Element()
            let relatedArticle = WHATWG.HTML.Article.Element()

            #expect(WHATWG.HTML.Article.Element.tag == "article")
            #expect(mainArticle is any WHATWG.HTML.Element)
            #expect(relatedArticle is any WHATWG.HTML.Element)
        }
    }

    @Suite struct `Content Structure` {

        @Test func `Article with heading structure`() {
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Standalone content article`() {
            #expect(WHATWG.HTML.Article.Element.tag == "article")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple articles in feed`() {
            let articles = [
                WHATWG.HTML.Article.Element(), WHATWG.HTML.Article.Element(),
                WHATWG.HTML.Article.Element(),
            ]

            #expect(articles.count == 3)
            articles.forEach { article in #expect(type(of: article).tag == "article") }
        }

        @Test func `Article collection rendering`() {
            let newsArticle = WHATWG.HTML.Article.Element()
            let blogPost = WHATWG.HTML.Article.Element()
            let review = WHATWG.HTML.Article.Element()

            let allArticles = [newsArticle, blogPost, review]

            #expect(allArticles.count == 3)
            allArticles.forEach { article in
                #expect(article is any WHATWG.HTML.Element)
                #expect(type(of: article).tag == "article")
            }
        }

        @Test func `Article as independent component`() {
            let article = WHATWG.HTML.Article.Element()
            let element: any WHATWG.HTML.Element = article

            #expect(type(of: element).tag == "article")
        }
    }
}
