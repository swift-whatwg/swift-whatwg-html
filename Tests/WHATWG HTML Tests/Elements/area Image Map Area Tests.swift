import Testing
import WHATWG_HTML

@Suite struct `Image Map Area Tests` {

    @Test func `Basic area creation`() {
        let area = WHATWG.HTML.Area.Element()
        #expect(WHATWG.HTML.Area.Element.tag == "area")
        #expect(area.shape == nil)
        #expect(area.href == nil)
        #expect(area.alt == nil)
    }

    @Test func `Area conforms to HTMLElement`() {
        let area = WHATWG.HTML.Area.Element()
        let element: any WHATWG.HTML.Element = area
        #expect(type(of: element).tag == "area")
    }

    @Test func `Area with rectangular shape`() {
        let shape = WHATWG.HTML.Area.Element.Shape.rect(coords: "0,0,100,100")
        let href = WHATWG.HTML.Href.Attribute("page1.html")
        let alt = WHATWG.HTML.Alt.Attribute("Rectangle area")
        let area = WHATWG.HTML.Area.Element(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == "0,0,100,100")
    }

    @Test func `Area with circular shape`() {
        let shape = WHATWG.HTML.Area.Element.Shape.circle(coords: "50,50,30")
        let href = WHATWG.HTML.Href.Attribute("page2.html")
        let alt = WHATWG.HTML.Alt.Attribute("Circle area")
        let area = WHATWG.HTML.Area.Element(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == "50,50,30")
    }

    @Test func `Area with polygon shape`() {
        let shape = WHATWG.HTML.Area.Element.Shape.poly(coords: "0,0,50,0,25,43")
        let href = WHATWG.HTML.Href.Attribute("page3.html")
        let alt = WHATWG.HTML.Alt.Attribute("Triangle area")
        let area = WHATWG.HTML.Area.Element(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == "0,0,50,0,25,43")
    }

    @Test func `Area with default shape`() {
        let shape = WHATWG.HTML.Area.Element.Shape.default
        let href = WHATWG.HTML.Href.Attribute("default.html")
        let alt = WHATWG.HTML.Alt.Attribute("Default area")
        let area = WHATWG.HTML.Area.Element(shape: shape, href: href, alt: alt)

        #expect(area.shape == shape)
        #expect(area.href == href)
        #expect(area.alt == alt)
        #expect(area.coords == nil)
    }

    @Test func `Area with all attributes`() {
        let shape = WHATWG.HTML.Area.Element.Shape.rect(coords: "10,10,90,90")
        let alt = WHATWG.HTML.Alt.Attribute("Complete area")
        let href = WHATWG.HTML.Href.Attribute("complete.html")
        let download = WHATWG.HTML.Download.Attribute("file.pdf")
        let ping = WHATWG.HTML.Ping.Attribute("https://analytics.example.com/ping")
        let referrerpolicy = WHATWG.HTML.ReferrerPolicy.Attribute.noReferrer
        let rel = WHATWG.HTML.Rel.Attribute("noopener")
        let target = WHATWG.HTML.Target.Attribute.blank

        let area = WHATWG.HTML.Area.Element(
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
            let shape = WHATWG.HTML.Area.Element.Shape.rect(coords: "0,0,100,100")
            #expect(shape.label == "rect")
        }

        @Test func `Circle shape label`() {
            let shape = WHATWG.HTML.Area.Element.Shape.circle(coords: "50,50,25")
            #expect(shape.label == "circle")
        }

        @Test func `Polygon shape label`() {
            let shape = WHATWG.HTML.Area.Element.Shape.poly(coords: "0,0,50,0,25,43")
            #expect(shape.label == "poly")
        }

        @Test func `Default shape label`() {
            let shape = WHATWG.HTML.Area.Element.Shape.default
            #expect(shape.label == "default")
        }

        @Test func `Shape equality`() {
            let rect1 = WHATWG.HTML.Area.Element.Shape.rect(coords: "0,0,100,100")
            let rect2 = WHATWG.HTML.Area.Element.Shape.rect(coords: "0,0,100,100")
            let rect3 = WHATWG.HTML.Area.Element.Shape.rect(coords: "10,10,90,90")

            #expect(rect1 == rect2)
            #expect(rect1 != rect3)
        }

        @Test func `Shape is hashable`() {
            let shapes: Set<WHATWG.HTML.Area.Element.Shape> = [
                .rect(coords: "0,0,100,100"), .circle(coords: "50,50,25"),
                .poly(coords: "0,0,50,0,25,43"), .default,
            ]

            #expect(shapes.count == 4)
        }
    }

    @Suite struct `Convenience Creators` {

        @Test func `Rectangle creator`() {
            let href = WHATWG.HTML.Href.Attribute("rect.html")
            let alt = WHATWG.HTML.Alt.Attribute("Rectangle link")
            let target = WHATWG.HTML.Target.Attribute.blank

            let area = WHATWG.HTML.Area.Element.rectangle(
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
            let href = WHATWG.HTML.Href.Attribute("circle.html")
            let alt = WHATWG.HTML.Alt.Attribute("Circle link")

            let area = WHATWG.HTML.Area.Element.circle(
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
            let href = WHATWG.HTML.Href.Attribute("poly.html")
            let alt = WHATWG.HTML.Alt.Attribute("Polygon link")
            let points = [(0, 0), (50, 0), (25, 43)]

            let area = WHATWG.HTML.Area.Element.polygon(points: points, href: href, alt: alt)

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
            let href = WHATWG.HTML.Href.Attribute("default.html")
            let alt = WHATWG.HTML.Alt.Attribute("Default link")
            let target = WHATWG.HTML.Target.Attribute.`self`

            let area = WHATWG.HTML.Area.Element.defaultArea(href: href, alt: alt, target: target)

            #expect(area.coords == nil)
            #expect(area.href == href)
            #expect(area.alt == alt)
            #expect(area.target == target)
            #expect(area.shape == .default)
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Image map navigation`() {
            let area1 = WHATWG.HTML.Area.Element.rectangle(
                x1: 0,
                y1: 0,
                x2: 100,
                y2: 50,
                href: WHATWG.HTML.Href.Attribute("top.html"),
                alt: WHATWG.HTML.Alt.Attribute("Top section")
            )

            let area2 = WHATWG.HTML.Area.Element.rectangle(
                x1: 0,
                y1: 50,
                x2: 100,
                y2: 100,
                href: WHATWG.HTML.Href.Attribute("bottom.html"),
                alt: WHATWG.HTML.Alt.Attribute("Bottom section")
            )

            #expect(area1.coords == "0,0,100,50")
            #expect(area2.coords == "0,50,100,100")
        }

        @Test func `Interactive diagram`() {
            let buttonArea = WHATWG.HTML.Area.Element.circle(
                x: 50,
                y: 30,
                radius: 20,
                href: WHATWG.HTML.Href.Attribute("#button-info"),
                alt: WHATWG.HTML.Alt.Attribute("Button component")
            )

            #expect(buttonArea.coords == "50,30,20")
            #expect(buttonArea.alt?.description == "Button component")
        }

        @Test func `Geographic map`() {
            let region = WHATWG.HTML.Area.Element.polygon(
                points: [(100, 50), (150, 75), (125, 125), (75, 100)],
                href: WHATWG.HTML.Href.Attribute("region-details.html"),
                alt: WHATWG.HTML.Alt.Attribute("Northern region")
            )

            #expect(region.coords == "100,50,150,75,125,125,75,100")
        }
    }

    @Suite struct `Accessibility Tests` {

        @Test func `Alt text is required for links`() {
            let href = WHATWG.HTML.Href.Attribute("link.html")
            let alt = WHATWG.HTML.Alt.Attribute("Accessible link")
            let area = WHATWG.HTML.Area.Element(
                shape: .rect(coords: "0,0,100,100"),
                alt: alt,
                href: href
            )

            #expect(area.alt == alt)
            #expect(area.href == href)
        }

        @Test func `Descriptive alt text`() {
            let alt = WHATWG.HTML.Alt.Attribute("Navigate to product details page")
            let area = WHATWG.HTML.Area.Element(
                shape: .circle(coords: "50,50,25"),
                alt: alt,
                href: WHATWG.HTML.Href.Attribute("product.html")
            )

            #expect(area.alt?.description == "Navigate to product details page")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Multiple areas in image map`() {
            let areas = [
                WHATWG.HTML.Area.Element.rectangle(
                    x1: 0,
                    y1: 0,
                    x2: 100,
                    y2: 50,
                    href: WHATWG.HTML.Href.Attribute("top.html"),
                    alt: WHATWG.HTML.Alt.Attribute("Top")
                ),
                WHATWG.HTML.Area.Element.circle(
                    x: 50,
                    y: 75,
                    radius: 25,
                    href: WHATWG.HTML.Href.Attribute("center.html"),
                    alt: WHATWG.HTML.Alt.Attribute("Center")
                ),
                WHATWG.HTML.Area.Element.defaultArea(
                    href: WHATWG.HTML.Href.Attribute("default.html"),
                    alt: WHATWG.HTML.Alt.Attribute("Default area")
                ),
            ]

            #expect(areas.count == 3)
            #expect(areas[0].coords == "0,0,100,50")
            #expect(areas[1].coords == "50,75,25")
            #expect(areas[2].coords == nil)
        }

        @Test func `Area with security attributes`() {
            let area = WHATWG.HTML.Area.Element(
                shape: .rect(coords: "0,0,100,100"),
                alt: WHATWG.HTML.Alt.Attribute("External link"),
                href: WHATWG.HTML.Href.Attribute("https://external.com"),
                rel: WHATWG.HTML.Rel.Attribute("noopener noreferrer"),
                target: WHATWG.HTML.Target.Attribute.blank
            )

            #expect(area.rel?.description == "noopener noreferrer")
            #expect(area.target == WHATWG.HTML.Target.Attribute.blank)
        }
    }
}
