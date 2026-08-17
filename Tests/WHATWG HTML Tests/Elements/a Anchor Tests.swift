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

@Suite struct `Anchor Tests` {

    @Test func `Basic anchor creation`() {
        let anchor = WHATWG_HTML.Element.Anchor()
        #expect(WHATWG_HTML.Element.Anchor.tag == "a")
        #expect(anchor.href == nil)
        #expect(anchor.target == nil)
        #expect(anchor.rel == nil)
    }

    @Test func `Anchor with href`() {
        let href = WHATWG_HTML.Attribute.Href("https://example.com")
        let anchor = WHATWG_HTML.Element.Anchor(href: href)
        #expect(anchor.href == href)
    }

    @Test func `Anchor with target`() {
        let target = WHATWG_HTML.Attribute.Target.blank
        let anchor = WHATWG_HTML.Element.Anchor(target: target)
        #expect(anchor.target == target)
    }

    @Test func `Anchor with rel`() {
        let rel = WHATWG_HTML.Attribute.Rel("noopener noreferrer")
        let anchor = WHATWG_HTML.Element.Anchor(rel: rel)
        #expect(anchor.rel == rel)
    }

    @Test func `Anchor with download`() {
        let download = WHATWG_HTML.Attribute.Download("filename.pdf")
        let anchor = WHATWG_HTML.Element.Anchor(download: download)
        #expect(anchor.download == download)
    }

    @Test func `Anchor with hreflang`() {
        let hreflang = WHATWG_HTML.Attribute.Hreflang("en")
        let anchor = WHATWG_HTML.Element.Anchor(hreflang: hreflang)
        #expect(anchor.hreflang == hreflang)
    }

    @Test func `Anchor with ping`() {
        let ping = WHATWG_HTML.Attribute.Ping("https://analytics.example.com/ping")
        let anchor = WHATWG_HTML.Element.Anchor(ping: ping)
        #expect(anchor.ping == ping)
    }

    @Test func `Anchor with referrer policy`() {
        let policy = WHATWG_HTML.Attribute.ReferrerPolicy.noReferrer
        let anchor = WHATWG_HTML.Element.Anchor(referrerpolicy: policy)
        #expect(anchor.referrerpolicy == policy)
    }

    @Test func `Anchor with attribution source`() {
        let attributionsrc = WHATWG_HTML.Attribute.AttributionSrc()
        let anchor = WHATWG_HTML.Element.Anchor(attributionsrc: attributionsrc)
        #expect(anchor.attributionsrc == attributionsrc)
    }

    @Test func `Complete anchor configuration`() {
        let href = WHATWG_HTML.Attribute.Href("https://example.com")
        let target = WHATWG_HTML.Attribute.Target.blank
        let rel = WHATWG_HTML.Attribute.Rel("noopener noreferrer")
        let download = WHATWG_HTML.Attribute.Download("document.pdf")
        let hreflang = WHATWG_HTML.Attribute.Hreflang("en")
        let ping = WHATWG_HTML.Attribute.Ping("https://analytics.example.com/ping")
        let referrerpolicy = WHATWG_HTML.Attribute.ReferrerPolicy.noReferrer
        let attributionsrc = WHATWG_HTML.Attribute.AttributionSrc()

        let anchor = WHATWG_HTML.Element.Anchor(
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
            let href = WHATWG_HTML.Attribute.Href("mailto:contact@example.com")
            let anchor = WHATWG_HTML.Element.Anchor(href: href)
            #expect(anchor.href == href)
        }

        @Test func `Telephone link`() {
            let href = WHATWG_HTML.Attribute.Href("tel:+15555555555")
            let anchor = WHATWG_HTML.Element.Anchor(href: href)
            #expect(anchor.href == href)
        }

        @Test func `In-page navigation`() {
            let href = WHATWG_HTML.Attribute.Href("#section-id")
            let anchor = WHATWG_HTML.Element.Anchor(href: href)
            #expect(anchor.href == href)
        }

        @Test func `External link with security`() {
            let href = WHATWG_HTML.Attribute.Href("https://external-site.com")
            let target = WHATWG_HTML.Attribute.Target.blank
            let rel = WHATWG_HTML.Attribute.Rel("noopener noreferrer")

            let anchor = WHATWG_HTML.Element.Anchor(href: href, rel: rel, target: target)

            #expect(anchor.href == href)
            #expect(anchor.target == target)
            #expect(anchor.rel == rel)
        }

        @Test func `Download link`() {
            let href = WHATWG_HTML.Attribute.Href("/files/document.pdf")
            let download = WHATWG_HTML.Attribute.Download("important-document.pdf")

            let anchor = WHATWG_HTML.Element.Anchor(download: download, href: href)

            #expect(anchor.href == href)
            #expect(anchor.download == download)
        }

        @Test func `Multilingual link`() {
            let href = WHATWG_HTML.Attribute.Href("https://example.fr")
            let hreflang = WHATWG_HTML.Attribute.Hreflang("fr")

            let anchor = WHATWG_HTML.Element.Anchor(href: href, hreflang: hreflang)

            #expect(anchor.href == href)
            #expect(anchor.hreflang == hreflang)
        }

        @Test func `Tracked link`() {
            let href = WHATWG_HTML.Attribute.Href("https://example.com")
            let ping = WHATWG_HTML.Attribute.Ping("https://analytics.example.com/ping https://tracking.example.com/click")

            let anchor = WHATWG_HTML.Element.Anchor(href: href, ping: ping)

            #expect(anchor.href == href)
            #expect(anchor.ping == ping)
        }
    }

    @Suite struct `Target Attribute Tests` {

        @Test func `Target self`() {
            let target = WHATWG_HTML.Attribute.Target.`self`
            let anchor = WHATWG_HTML.Element.Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Target blank`() {
            let target = WHATWG_HTML.Attribute.Target.blank
            let anchor = WHATWG_HTML.Element.Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Target parent`() {
            let target = WHATWG_HTML.Attribute.Target.parent
            let anchor = WHATWG_HTML.Element.Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Target top`() {
            let target = WHATWG_HTML.Attribute.Target.top
            let anchor = WHATWG_HTML.Element.Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Custom target`() {
            let target = WHATWG_HTML.Attribute.Target("myframe")
            let anchor = WHATWG_HTML.Element.Anchor(target: target)
            #expect(anchor.target == target)
        }
    }

    @Suite struct `Referrer Policy Tests` {

        @Test func `No referrer`() {
            let policy = WHATWG_HTML.Attribute.ReferrerPolicy.noReferrer
            let anchor = WHATWG_HTML.Element.Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test func `Origin`() {
            let policy = WHATWG_HTML.Attribute.ReferrerPolicy.origin
            let anchor = WHATWG_HTML.Element.Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test func `Same origin`() {
            let policy = WHATWG_HTML.Attribute.ReferrerPolicy.sameOrigin
            let anchor = WHATWG_HTML.Element.Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test func `Strict origin`() {
            let policy = WHATWG_HTML.Attribute.ReferrerPolicy.strictOrigin
            let anchor = WHATWG_HTML.Element.Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }
    }
}
