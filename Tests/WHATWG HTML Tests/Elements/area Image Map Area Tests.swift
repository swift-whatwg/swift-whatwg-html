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

@Suite struct `Image Map Area Tests` {

    @Test func `Basic area creation`() {
        let area = WHATWG_HTML.Element.Area()
        #expect(WHATWG_HTML.Element.Area.tag == "area")
        #expect(area.shape == nil)
        #expect(area.href == nil)
        #expect(area.alt == nil)
    }

    @Test func `Area conforms to HTMLElement`() {
        let area = WHATWG_HTML.Element.Area()
        let element: any WHATWG_HTML.Element.`Protocol` = area
        #expect(type(of: element).tag == "area")
    }

    @Test func `Area with rectangular shape`() {
        let shape = WHATWG_HTML.Element.Area.Shape.rect(coords: "0,0,100,100")
        let href = WHATWG_HTML.Attribute.Href("page1.html")
        let alt = WHATWG_HTML.Attribute.Alt("Rectangle area")
        let area = WHATWG_HTML.Element.Area(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == "0,0,100,100")
    }

    @Test func `Area with circular shape`() {
        let shape = WHATWG_HTML.Element.Area.Shape.circle(coords: "50,50,30")
        let href = WHATWG_HTML.Attribute.Href("page2.html")
        let alt = WHATWG_HTML.Attribute.Alt("Circle area")
        let area = WHATWG_HTML.Element.Area(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == "50,50,30")
    }

    @Test func `Area with polygon shape`() {
        let shape = WHATWG_HTML.Element.Area.Shape.poly(coords: "0,0,50,0,25,43")
        let href = WHATWG_HTML.Attribute.Href("page3.html")
        let alt = WHATWG_HTML.Attribute.Alt("Triangle area")
        let area = WHATWG_HTML.Element.Area(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == "0,0,50,0,25,43")
    }

    @Test func `Area with default shape`() {
        let shape = WHATWG_HTML.Element.Area.Shape.default
        let href = WHATWG_HTML.Attribute.Href("default.html")
        let alt = WHATWG_HTML.Attribute.Alt("Default area")
        let area = WHATWG_HTML.Element.Area(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == nil)
    }

    @Test func `Area with all attributes`() {
        let shape = WHATWG_HTML.Element.Area.Shape.rect(coords: "10,10,90,90")
        let alt = WHATWG_HTML.Attribute.Alt("Complete area")
        let href = WHATWG_HTML.Attribute.Href("complete.html")
        let download = WHATWG_HTML.Attribute.Download("file.pdf")
        let ping = WHATWG_HTML.Attribute.Ping("https://analytics.example.com/ping")
        let referrerpolicy = WHATWG_HTML.Attribute.ReferrerPolicy.noReferrer
        let rel = WHATWG_HTML.Attribute.Rel("noopener")
        let target = WHATWG_HTML.Attribute.Target.blank

        let area = WHATWG_HTML.Element.Area(
            shape: shape,
            alt: alt,
            href: href,
            download: download,
            ping: ping,
            referrerpolicy: referrerpolicy,
            rel: rel,
            target: target
        )

        #expect(area.shape == shape)
        #expect(area.alt == alt)
        #expect(area.href == href)
        #expect(area.download == download)
        #expect(area.ping == ping)
        #expect(area.referrerpolicy == referrerpolicy)
        #expect(area.rel == rel)
        #expect(area.target == target)
    }

    @Suite struct `Shape Tests` {

        @Test func `Rectangle shape label`() {
            let shape = WHATWG_HTML.Element.Area.Shape.rect(coords: "0,0,100,100")
            #expect(shape.label == "rect")
        }

        @Test func `Circle shape label`() {
            let shape = WHATWG_HTML.Element.Area.Shape.circle(coords: "50,50,25")
            #expect(shape.label == "circle")
        }

        @Test func `Polygon shape label`() {
            let shape = WHATWG_HTML.Element.Area.Shape.poly(coords: "0,0,50,0,25,43")
            #expect(shape.label == "poly")
        }

        @Test func `Default shape label`() {
            let shape = WHATWG_HTML.Element.Area.Shape.default
            #expect(shape.label == "default")
        }

        @Test func `Shape equality`() {
            let rect1 = WHATWG_HTML.Element.Area.Shape.rect(coords: "0,0,100,100")
            let rect2 = WHATWG_HTML.Element.Area.Shape.rect(coords: "0,0,100,100")
            let rect3 = WHATWG_HTML.Element.Area.Shape.rect(coords: "10,10,90,90")

            #expect(rect1 == rect2)
            #expect(rect1 != rect3)
        }

        @Test func `Shape is hashable`() {
            let shapes: Set<WHATWG_HTML.Element.Area.Shape> = [
                .rect(coords: "0,0,100,100"), .circle(coords: "50,50,25"),
                .poly(coords: "0,0,50,0,25,43"), .default,
            ]

            #expect(shapes.count == 4)
        }
    }

    @Suite struct `Convenience Creators` {

        @Test func `Rectangle creator`() {
            let href = WHATWG_HTML.Attribute.Href("rect.html")
            let alt = WHATWG_HTML.Attribute.Alt("Rectangle link")
            let target = WHATWG_HTML.Attribute.Target.blank

            let area = WHATWG_HTML.Element.Area.rectangle(
                x1: 10,
                y1: 20,
                x2: 90,
                y2: 80,
                href: href,
                alt: alt,
                target: target
            )

            #expect(area.coords == "10,20,90,80")
            #expect(area.href == href)
            #expect(area.alt == alt)
            #expect(area.target == target)

            if case .rect(let coords) = area.shape {
                #expect(coords == "10,20,90,80")
            } else {
                #expect(Bool(false), "Expected rect shape")
            }
        }

        @Test func `Circle creator`() {
            let href = WHATWG_HTML.Attribute.Href("circle.html")
            let alt = WHATWG_HTML.Attribute.Alt("Circle link")

            let area = WHATWG_HTML.Element.Area.circle(
                x: 50,
                y: 50,
                radius: 25,
                href: href,
                alt: alt
            )

            #expect(area.coords == "50,50,25")
            #expect(area.href == href)
            #expect(area.alt == alt)

            if case .circle(let coords) = area.shape {
                #expect(coords == "50,50,25")
            } else {
                #expect(Bool(false), "Expected circle shape")
            }
        }

        @Test func `Polygon creator`() {
            let href = WHATWG_HTML.Attribute.Href("poly.html")
            let alt = WHATWG_HTML.Attribute.Alt("Polygon link")
            let points = [(0, 0), (50, 0), (25, 43)]

            let area = WHATWG_HTML.Element.Area.polygon(points: points, href: href, alt: alt)

            #expect(area.coords == "0,0,50,0,25,43")
            #expect(area.href == href)
            #expect(area.alt == alt)

            if case .poly(let coords) = area.shape {
                #expect(coords == "0,0,50,0,25,43")
            } else {
                #expect(Bool(false), "Expected poly shape")
            }
        }

        @Test func `Default area creator`() {
            let href = WHATWG_HTML.Attribute.Href("default.html")
            let alt = WHATWG_HTML.Attribute.Alt("Default link")
            let target = WHATWG_HTML.Attribute.Target.`self`

            let area = WHATWG_HTML.Element.Area.defaultArea(href: href, alt: alt, target: target)

            #expect(area.coords == nil)
            #expect(area.href == href)
            #expect(area.alt == alt)
            #expect(area.target == target)
            #expect(area.shape == .default)
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Image map navigation`() {
            let area1 = WHATWG_HTML.Element.Area.rectangle(
                x1: 0,
                y1: 0,
                x2: 100,
                y2: 50,
                href: WHATWG_HTML.Attribute.Href("top.html"),
                alt: WHATWG_HTML.Attribute.Alt("Top section")
            )

            let area2 = WHATWG_HTML.Element.Area.rectangle(
                x1: 0,
                y1: 50,
                x2: 100,
                y2: 100,
                href: WHATWG_HTML.Attribute.Href("bottom.html"),
                alt: WHATWG_HTML.Attribute.Alt("Bottom section")
            )

            #expect(area1.coords == "0,0,100,50")
            #expect(area2.coords == "0,50,100,100")
        }

        @Test func `Interactive diagram`() {
            let buttonArea = WHATWG_HTML.Element.Area.circle(
                x: 50,
                y: 30,
                radius: 20,
                href: WHATWG_HTML.Attribute.Href("#button-info"),
                alt: WHATWG_HTML.Attribute.Alt("Button component")
            )

            #expect(buttonArea.coords == "50,30,20")
            #expect(buttonArea.alt?.description == "Button component")
        }

        @Test func `Geographic map`() {
            let region = WHATWG_HTML.Element.Area.polygon(
                points: [(100, 50), (150, 75), (125, 125), (75, 100)],
                href: WHATWG_HTML.Attribute.Href("region-details.html"),
                alt: WHATWG_HTML.Attribute.Alt("Northern region")
            )

            #expect(region.coords == "100,50,150,75,125,125,75,100")
        }
    }

    @Suite struct `Accessibility Tests` {

        @Test func `Alt text is required for links`() {
            let href = WHATWG_HTML.Attribute.Href("link.html")
            let alt = WHATWG_HTML.Attribute.Alt("Accessible link")
            let area = WHATWG_HTML.Element.Area(
                shape: .rect(coords: "0,0,100,100"),
                alt: alt,
                href: href
            )

            #expect(area.alt == alt)
            #expect(area.href == href)
        }

        @Test func `Descriptive alt text`() {
            let alt = WHATWG_HTML.Attribute.Alt("Navigate to product details page")
            let area = WHATWG_HTML.Element.Area(
                shape: .circle(coords: "50,50,25"),
                alt: alt,
                href: WHATWG_HTML.Attribute.Href("product.html")
            )

            #expect(area.alt?.description == "Navigate to product details page")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple areas in image map`() {
            let areas = [
                WHATWG_HTML.Element.Area.rectangle(
                    x1: 0,
                    y1: 0,
                    x2: 100,
                    y2: 50,
                    href: WHATWG_HTML.Attribute.Href("top.html"),
                    alt: WHATWG_HTML.Attribute.Alt("Top")
                ),
                WHATWG_HTML.Element.Area.circle(
                    x: 50,
                    y: 75,
                    radius: 25,
                    href: WHATWG_HTML.Attribute.Href("center.html"),
                    alt: WHATWG_HTML.Attribute.Alt("Center")
                ),
                WHATWG_HTML.Element.Area.defaultArea(
                    href: WHATWG_HTML.Attribute.Href("default.html"),
                    alt: WHATWG_HTML.Attribute.Alt("Default area")
                ),
            ]

            #expect(areas.count == 3)
            #expect(areas[0].coords == "0,0,100,50")
            #expect(areas[1].coords == "50,75,25")
            #expect(areas[2].coords == nil)
        }

        @Test func `Area with security attributes`() {
            let area = WHATWG_HTML.Element.Area(
                shape: .rect(coords: "0,0,100,100"),
                alt: WHATWG_HTML.Attribute.Alt("External link"),
                href: WHATWG_HTML.Attribute.Href("https://external.com"),
                rel: WHATWG_HTML.Attribute.Rel("noopener noreferrer"),
                target: WHATWG_HTML.Attribute.Target.blank
            )

            #expect(area.rel?.description == "noopener noreferrer")
            #expect(area.target == WHATWG_HTML.Attribute.Target.blank)
        }
    }
}
