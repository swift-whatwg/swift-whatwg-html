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
        let anchor = Anchor()
        #expect(Anchor.tag == "a")
        #expect(anchor.href == nil)
        #expect(anchor.target == nil)
        #expect(anchor.rel == nil)
    }

    @Test func `Anchor with href`() {
        let href = Href("https://example.com")
        let anchor = Anchor(href: href)
        #expect(anchor.href == href)
    }

    @Test func `Anchor with target`() {
        let target = Target.blank
        let anchor = Anchor(target: target)
        #expect(anchor.target == target)
    }

    @Test func `Anchor with rel`() {
        let rel = Rel("noopener noreferrer")
        let anchor = Anchor(rel: rel)
        #expect(anchor.rel == rel)
    }

    @Test func `Anchor with download`() {
        let download = Download("filename.pdf")
        let anchor = Anchor(download: download)
        #expect(anchor.download == download)
    }

    @Test func `Anchor with hreflang`() {
        let hreflang = Hreflang("en")
        let anchor = Anchor(hreflang: hreflang)
        #expect(anchor.hreflang == hreflang)
    }

    @Test func `Anchor with ping`() {
        let ping = Ping("https://analytics.example.com/ping")
        let anchor = Anchor(ping: ping)
        #expect(anchor.ping == ping)
    }

    @Test func `Anchor with referrer policy`() {
        let policy = ReferrerPolicy.noReferrer
        let anchor = Anchor(referrerpolicy: policy)
        #expect(anchor.referrerpolicy == policy)
    }

    @Test func `Anchor with attribution source`() {
        let attributionsrc = AttributionSrc()
        let anchor = Anchor(attributionsrc: attributionsrc)
        #expect(anchor.attributionsrc == attributionsrc)
    }

    @Test func `Complete anchor configuration`() {
        let href = Href("https://example.com")
        let target = Target.blank
        let rel = Rel("noopener noreferrer")
        let download = Download("document.pdf")
        let hreflang = Hreflang("en")
        let ping = Ping("https://analytics.example.com/ping")
        let referrerpolicy = ReferrerPolicy.noReferrer
        let attributionsrc = AttributionSrc()

        let anchor = Anchor(
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
            let href = Href("mailto:contact@example.com")
            let anchor = Anchor(href: href)
            #expect(anchor.href == href)
        }

        @Test func `Telephone link`() {
            let href = Href("tel:+15555555555")
            let anchor = Anchor(href: href)
            #expect(anchor.href == href)
        }

        @Test func `In-page navigation`() {
            let href = Href("#section-id")
            let anchor = Anchor(href: href)
            #expect(anchor.href == href)
        }

        @Test func `External link with security`() {
            let href = Href("https://external-site.com")
            let target = Target.blank
            let rel = Rel("noopener noreferrer")

            let anchor = Anchor(href: href, rel: rel, target: target)

            #expect(anchor.href == href)
            #expect(anchor.target == target)
            #expect(anchor.rel == rel)
        }

        @Test func `Download link`() {
            let href = Href("/files/document.pdf")
            let download = Download("important-document.pdf")

            let anchor = Anchor(download: download, href: href)

            #expect(anchor.href == href)
            #expect(anchor.download == download)
        }

        @Test func `Multilingual link`() {
            let href = Href("https://example.fr")
            let hreflang = Hreflang("fr")

            let anchor = Anchor(href: href, hreflang: hreflang)

            #expect(anchor.href == href)
            #expect(anchor.hreflang == hreflang)
        }

        @Test func `Tracked link`() {
            let href = Href("https://example.com")
            let ping = Ping("https://analytics.example.com/ping https://tracking.example.com/click")

            let anchor = Anchor(href: href, ping: ping)

            #expect(anchor.href == href)
            #expect(anchor.ping == ping)
        }
    }

    @Suite struct `Target Attribute Tests` {

        @Test func `Target self`() {
            let target = Target.`self`
            let anchor = Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Target blank`() {
            let target = Target.blank
            let anchor = Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Target parent`() {
            let target = Target.parent
            let anchor = Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Target top`() {
            let target = Target.top
            let anchor = Anchor(target: target)
            #expect(anchor.target == target)
        }

        @Test func `Custom target`() {
            let target = Target("myframe")
            let anchor = Anchor(target: target)
            #expect(anchor.target == target)
        }
    }

    @Suite struct `Referrer Policy Tests` {

        @Test func `No referrer`() {
            let policy = ReferrerPolicy.noReferrer
            let anchor = Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test func `Origin`() {
            let policy = ReferrerPolicy.origin
            let anchor = Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test func `Same origin`() {
            let policy = ReferrerPolicy.sameOrigin
            let anchor = Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }

        @Test func `Strict origin`() {
            let policy = ReferrerPolicy.strictOrigin
            let anchor = Anchor(referrerpolicy: policy)
            #expect(anchor.referrerpolicy == policy)
        }
    }
}
