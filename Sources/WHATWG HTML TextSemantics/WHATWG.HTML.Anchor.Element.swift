public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Anchor {

    public struct Element: WHATWG.HTML.Element {

        public var attributionsrc: WHATWG.HTML.AttributionSrc.Attribute?

        public var download: WHATWG.HTML.Download.Attribute?

        public var href: WHATWG.HTML.Href.Attribute?

        public var hreflang: WHATWG.HTML.Hreflang.Attribute?

        public var ping: WHATWG.HTML.Ping.Attribute?

        public var referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute?

        public var rel: WHATWG.HTML.Rel.Attribute?

        public var target: WHATWG.HTML.Target.Attribute?

        public init(
            attributionsrc: WHATWG.HTML.AttributionSrc.Attribute? = nil,
            download: WHATWG.HTML.Download.Attribute? = nil,
            href: WHATWG.HTML.Href.Attribute? = nil,
            hreflang: WHATWG.HTML.Hreflang.Attribute? = nil,
            ping: WHATWG.HTML.Ping.Attribute? = nil,
            referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute? = nil,
            rel: WHATWG.HTML.Rel.Attribute? = nil,
            target: WHATWG.HTML.Target.Attribute? = nil
        ) {
            self.attributionsrc = attributionsrc
            self.download = download
            self.href = href
            self.hreflang = hreflang
            self.ping = ping
            self.referrerpolicy = referrerpolicy
            self.rel = rel
            self.target = target
        }
    }
}

extension WHATWG.HTML.Anchor.Element {
    @inlinable public static var tag: String { "a" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .transparent)
}
