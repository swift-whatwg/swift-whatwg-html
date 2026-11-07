public import WHATWG_HTML_FormAttributes
import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Area {

    public struct Element: WHATWG.HTML.Element {

        public var shape: Shape?

        public var alt: WHATWG.HTML.Alt.Attribute?

        public var href: WHATWG.HTML.Href.Attribute?

        public var download: WHATWG.HTML.Download.Attribute?

        public var ping: WHATWG.HTML.Ping.Attribute?

        public var referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute?

        public var rel: WHATWG.HTML.Rel.Attribute?

        public var target: WHATWG.HTML.Target.Attribute?

        public init(
            shape: Shape? = nil,
            alt: WHATWG.HTML.Alt.Attribute? = nil,
            href: WHATWG.HTML.Href.Attribute? = nil,
            download: WHATWG.HTML.Download.Attribute? = nil,
            ping: WHATWG.HTML.Ping.Attribute? = nil,
            referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute? = nil,
            rel: WHATWG.HTML.Rel.Attribute? = nil,
            target: WHATWG.HTML.Target.Attribute? = nil
        ) {
            self.shape = shape
            self.alt = alt
            self.href = href
            self.download = download
            self.ping = ping
            self.referrerpolicy = referrerpolicy
            self.rel = rel
            self.target = target
        }

        public init(
            shape: Shape,
            href: WHATWG.HTML.Href.Attribute,
            alt: WHATWG.HTML.Alt.Attribute,
            target: WHATWG.HTML.Target.Attribute? = nil
        ) {
            self.shape = shape
            self.href = href
            self.alt = alt
            self.target = target
        }
    }
}

extension WHATWG.HTML.Area.Element {
    @inlinable public static var tag: String { "area" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)

    public var coords: String? {
        switch self.shape {
        case .circle(coords: let value), .poly(coords: let value), .rect(coords: let value):
            return value

        default: return nil
        }
    }
}

extension WHATWG.HTML.Area.Element {

    public enum Shape: Sendable, Hashable {

        case rect(coords: String)

        case circle(coords: String)

        case poly(coords: String)

        case `default`
    }
}

extension WHATWG.HTML.Area.Element.Shape {
    public var label: String {
        switch self {
        case .rect: return "rect"
        case .circle: return "circle"
        case .poly: return "poly"
        case .`default`: return "default"
        }
    }
}

extension WHATWG.HTML.Area.Element {

    public static func rectangle(
        x1: Int,
        y1: Int,
        x2: Int,
        y2: Int,
        href: WHATWG.HTML.Href.Attribute,
        alt: WHATWG.HTML.Alt.Attribute,
        target: WHATWG.HTML.Target.Attribute? = nil
    ) -> WHATWG.HTML.Area.Element {
        let coords = "\(x1),\(y1),\(x2),\(y2)"
        return WHATWG.HTML.Area.Element(
            shape: .rect(coords: coords),
            href: href,
            alt: alt,
            target: target
        )
    }

    public static func circle(
        x: Int,
        y: Int,
        radius: Int,
        href: WHATWG.HTML.Href.Attribute,
        alt: WHATWG.HTML.Alt.Attribute,
        target: WHATWG.HTML.Target.Attribute? = nil
    ) -> WHATWG.HTML.Area.Element {
        let coords = "\(x),\(y),\(radius)"
        return WHATWG.HTML.Area.Element(
            shape: .circle(coords: coords),
            href: href,
            alt: alt,
            target: target
        )
    }

    @_disfavoredOverload public static func polygon(
        points: [(Int, Int)],
        href: WHATWG.HTML.Href.Attribute,
        alt: WHATWG.HTML.Alt.Attribute,
        target: WHATWG.HTML.Target.Attribute? = nil
    ) -> WHATWG.HTML.Area.Element {
        let coords = points.map { "\($0.0),\($0.1)" }.joined(separator: ",")
        return WHATWG.HTML.Area.Element(
            shape: .poly(coords: coords),
            href: href,
            alt: alt,
            target: target
        )
    }

    public static func defaultArea(
        href: WHATWG.HTML.Href.Attribute,
        alt: WHATWG.HTML.Alt.Attribute,
        target: WHATWG.HTML.Target.Attribute? = nil
    ) -> WHATWG.HTML.Area.Element {
        return WHATWG.HTML.Area.Element(shape: .default, href: href, alt: alt, target: target)
    }
}
