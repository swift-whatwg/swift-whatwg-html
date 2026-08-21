public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Link {

    public struct Element: WHATWG.HTML.Element {

        public var `as`: WHATWG.HTML.As.Attribute?

        public var blocking: WHATWG.HTML.Blocking.Attribute?

        public var crossorigin: WHATWG.HTML.Crossorigin.Attribute?

        public var disabled: WHATWG.HTML.Disabled.Attribute?

        public var fetchpriority: WHATWG.HTML.FetchPriority.Attribute?

        public var href: WHATWG.HTML.Href.Attribute?

        public var hreflang: WHATWG.HTML.Hreflang.Attribute?

        public var imagesizes: WHATWG.HTML.ImageSizes.Attribute?

        public var imagesrcset: WHATWG.HTML.ImageSrcSet.Attribute?

        public var integrity: WHATWG.HTML.Integrity.Attribute?

        public var media: WHATWG.HTML.Media.Attribute?

        public var referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute?

        public var rel: WHATWG.HTML.Rel.Attribute?

        public var sizes: WHATWG.HTML.Sizes.Attribute?

        public var title: WHATWG.HTML.Title.Attribute?

        public var type: WHATWG.HTML.Link.`Type`.Attribute?

        public init(
            `as`: WHATWG.HTML.As.Attribute? = nil,
            blocking: WHATWG.HTML.Blocking.Attribute? = nil,
            crossorigin: WHATWG.HTML.Crossorigin.Attribute? = nil,
            disabled: WHATWG.HTML.Disabled.Attribute? = nil,
            fetchpriority: WHATWG.HTML.FetchPriority.Attribute? = nil,
            href: WHATWG.HTML.Href.Attribute? = nil,
            hreflang: WHATWG.HTML.Hreflang.Attribute? = nil,
            imagesizes: WHATWG.HTML.ImageSizes.Attribute? = nil,
            imagesrcset: WHATWG.HTML.ImageSrcSet.Attribute? = nil,
            integrity: WHATWG.HTML.Integrity.Attribute? = nil,
            media: WHATWG.HTML.Media.Attribute? = nil,
            referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute? = nil,
            rel: WHATWG.HTML.Rel.Attribute? = nil,
            sizes: WHATWG.HTML.Sizes.Attribute? = nil,
            title: WHATWG.HTML.Title.Attribute? = nil,
            type: WHATWG.HTML.Link.`Type`.Attribute? = nil
        ) {
            self.`as` = `as`
            self.blocking = blocking
            self.crossorigin = crossorigin
            self.disabled = disabled
            self.fetchpriority = fetchpriority
            self.href = href
            self.hreflang = hreflang
            self.imagesizes = imagesizes
            self.imagesrcset = imagesrcset
            self.integrity = integrity
            self.media = media
            self.referrerpolicy = referrerpolicy
            self.rel = rel
            self.sizes = sizes
            self.title = title
            self.type = type
        }
    }
}

extension WHATWG.HTML.Link.Element {
    @inlinable public static var tag: String { "link" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.metadata]
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
