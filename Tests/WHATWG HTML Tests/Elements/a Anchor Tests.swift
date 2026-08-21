import Testing
import WHATWG_HTML

@Suite struct `Anchor Tests` {

    @Test func `Basic anchor creation`() {
        let anchor = WHATWG.HTML.Anchor.Element()
        #expect(WHATWG.HTML.Anchor.Element.tag == "a")
        #expect(anchor.href == nil)
        #expect(anchor.target == nil)
        #expect(anchor.rel == nil)
    }

    @Test func `Anchor with href`() {
        let href = WHATWG.HTML.Href.Attribute("https://example.com")
        let anchor = WHATWG.HTML.Anchor.Element(href: href)
        #expect(anchor.href == href)
    }

    @Test func `Anchor with target`() {
        let target = WHATWG.HTML.Target.Attribute.blank
        let anchor = WHATWG.HTML.Anchor.Element(target: target)
        #expect(anchor.target == target)
    }

    @Test func `Anchor with rel`() {
        let rel = WHATWG.HTML.Rel.Attribute("noopener noreferrer")
        let anchor = WHATWG.HTML.Anchor.Element(rel: rel)
        #expect(anchor.rel == rel)
    }

    @Test func `Anchor with download`() {
        let download = WHATWG.HTML.Download.Attribute("filename.pdf")
        let anchor = WHATWG.HTML.Anchor.Element(download: download)
        #expect(anchor.download == download)
    }

    @Test func `Anchor with hreflang`() {
        let hreflang = WHATWG.HTML.Hreflang.Attribute("en")
        let anchor = WHATWG.HTML.Anchor.Element(hreflang: hreflang)
        #expect(anchor.hreflang == hreflang)
    }

    @Test func `Anchor with ping`() {
        let ping = WHATWG.HTML.Ping.Attribute("https://analytics.example.com/ping")
        let anchor = WHATWG.HTML.Anchor.Element(ping: ping)
        #expect(anchor.ping == ping)
    }

    @Test func `Anchor with referrer policy`() {
        let policy = WHATWG.HTML.ReferrerPolicy.Attribute.noReferrer
        let anchor = WHATWG.HTML.Anchor.Element(referrerpolicy: policy)
        #expect(anchor.referrerpolicy == policy)
    }

    @Test func `Anchor with attribution source`() {
        let attributionsrc = WHATWG.HTML.AttributionSrc.Attribute()
        let anchor = WHATWG.HTML.Anchor.Element(attributionsrc: attributionsrc)
        #expect(anchor.attributionsrc == attributionsrc)
    }

    @Test func `Complete anchor configuration`() {
        let href = WHATWG.HTML.Href.Attribute("https://example.com")
        let target = WHATWG.HTML.Target.Attribute.blank
        let rel = WHATWG.HTML.Rel.Attribute("noopener noreferrer")
        let download = WHATWG.HTML.Download.Attribute("document.pdf")
        let hreflang = WHATWG.HTML.Hreflang.Attribute("en")
        let ping = WHATWG.HTML.Ping.Attribute("https://analytics.example.com/ping")
        let referrerpolicy = WHATWG.HTML.ReferrerPolicy.Attribute.noReferrer
        let attributionsrc = WHATWG.HTML.AttributionSrc.Attribute()

        let anchor = WHATWG.HTML.Anchor.Element(
            attributionsrc: attributionsrc,
            download: download,
            href: href,
            hreflang: hreflang,
            ping: ping,
            referrerpolicy: referrerpolicy,
            rel: rel,
            target: target
        )

        #expect(anchor.attributionsrc == attributionsrc)
        #expect(anchor.download == download)
        #expect(anchor.href == href)
        #expect(anchor.hreflang == hreflang)
        #expect(anchor.ping == ping)
        #expect(anchor.referrerpolicy == referrerpolicy)
        #expect(anchor.rel == rel)
        #expect(anchor.target == target)
    }

    @Suite struct `Common Use Cases` {

        @Test func `Email link`() {
            let href = WHATWG.HTML.Href.Attribute("mailto:contact@example.com")
            let anchor = WHATWG.HTML.Anchor.Element(href: href)
            #expect(anchor.href == href)
        }

        @Test func `Telephone link`() {
            let href = WHATWG.HTML.Href.Attribute("tel:+15555555555")
            let anchor = WHATWG.HTML.Anchor.Element(href: href)
            #expect(anchor.href == href)
        }

        @Test func `In-page navigation`() {
            let href = WHATWG.HTML.Href.Attribute("#section-id")
            let anchor = WHATWG.HTML.Anchor.Element(href: href)
            #expect(anchor.href == href)
        }

        @Test func `External link with security`() {
            let href = WHATWG.HTML.Href.Attribute("https://external-site.com")
            let target = WHATWG.HTML.Target.Attribute.blank
            let rel = WHATWG.HTML.Rel.Attribute("noopener noreferrer")

            let anchor = WHATWG.HTML.Anchor.Element(href: href, rel: rel, target: target)

            #expect(anchor.href == href)
            #expect(anchor.target == target)
            #expect(anchor.rel == rel)
        }

        @Test func `Download link`() {
            let href = WHATWG.HTML.Href.Attribute("/files/document.pdf")
            let download = WHATWG.HTML.Download.Attribute("important-document.pdf")

            let anchor = WHATWG.HTML.Anchor.Element(download: download, href: href)

            #expect(anchor.href == href)
            #expect(anchor.download == download)
        }

        @Test func `Multilingual link`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.fr")
            let hreflang = WHATWG.HTML.Hreflang.Attribute("fr")

            let anchor = WHATWG.HTML.Anchor.Element(href: href, hreflang: hreflang)

            #expect(anchor.href == href)
            #expect(anchor.hreflang == hreflang)
        }

        @Test func `Tracked link`() {
            let href = WHATWG.HTML.Href.Attribute("https://example.com")
            let ping = WHATWG.HTML.Ping.Attribute(
                "https://analytics.example.com/ping https://tracking.example.com/click"
            )

            let anchor = WHATWG.HTML.Anchor.Element(href: href, ping: ping)

            #expect(anchor.href == href)
            #expect(anchor.ping == ping)
        }
    }

    @Suite struct `Target Attribute Tests` {

        @Test func `Target self`() {
            let target = WHATWG.HTML.Target.Attribute.`self`
            let anchor = WHATWG.HTML.Anchor.Element(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Target blank`() {
            let target = WHATWG.HTML.Target.Attribute.blank
            let anchor = WHATWG.HTML.Anchor.Element(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Target parent`() {
            let target = WHATWG.HTML.Target.Attribute.parent
            let anchor = WHATWG.HTML.Anchor.Element(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Target top`() {
            let target = WHATWG.HTML.Target.Attribute.top
            let anchor = WHATWG.HTML.Anchor.Element(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Custom target`() {
            let target = WHATWG.HTML.Target.Attribute("myframe")
            let anchor = WHATWG.HTML.Anchor.Element(target: target)
            #expect(anchor.target == target)
        }
    }

    @Suite struct `Referrer Policy Tests` {

        @Test func `No referrer`() {
            let policy = WHATWG.HTML.ReferrerPolicy.Attribute.noReferrer
            let anchor = WHATWG.HTML.Anchor.Element(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test func `Origin`() {
            let policy = WHATWG.HTML.ReferrerPolicy.Attribute.origin
            let anchor = WHATWG.HTML.Anchor.Element(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test func `Same origin`() {
            let policy = WHATWG.HTML.ReferrerPolicy.Attribute.sameOrigin
            let anchor = WHATWG.HTML.Anchor.Element(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test func `Strict origin`() {
            let policy = WHATWG.HTML.ReferrerPolicy.Attribute.strictOrigin
            let anchor = WHATWG.HTML.Anchor.Element(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }
    }
}
