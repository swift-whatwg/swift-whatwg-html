public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Source {

    public struct Element: WHATWG.HTML.Element {

        public var type: WHATWG.HTML.Source.`Type`.Attribute?

        public var src: WHATWG.HTML.Src.Attribute?

        public var srcset: WHATWG.HTML.ImageSrcSet.Attribute?

        public var sizes: WHATWG.HTML.Sizes.Attribute?

        public var media: WHATWG.HTML.Media.Attribute?

        public var height: WHATWG.HTML.Height.Attribute?

        public var width: WHATWG.HTML.Width.Attribute?

        public init(
            type: WHATWG.HTML.Source.`Type`.Attribute? = nil,
            src: WHATWG.HTML.Src.Attribute? = nil,
            srcset: WHATWG.HTML.ImageSrcSet.Attribute? = nil,
            sizes: WHATWG.HTML.Sizes.Attribute? = nil,
            media: WHATWG.HTML.Media.Attribute? = nil,
            height: WHATWG.HTML.Height.Attribute? = nil,
            width: WHATWG.HTML.Width.Attribute? = nil
        ) {
            self.type = type
            self.src = src
            self.srcset = srcset
            self.sizes = sizes
            self.media = media
            self.height = height
            self.width = width
        }
    }
}

extension WHATWG.HTML.Source.Element {

    @inlinable public static var tag: String { "source" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
