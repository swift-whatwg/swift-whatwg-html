public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Style {

    public struct Element: WHATWG.HTML.Element {

        public var media: WHATWG.HTML.Media.Attribute?

        public var blocking: WHATWG.HTML.Blocking.Attribute?

        public var nonce: WHATWG.HTML.Nonce.Attribute?

        public var title: WHATWG.HTML.Title.Attribute?

        public init(
            media: WHATWG.HTML.Media.Attribute? = nil,
            blocking: WHATWG.HTML.Blocking.Attribute? = nil,
            nonce: WHATWG.HTML.Nonce.Attribute? = nil,
            title: WHATWG.HTML.Title.Attribute? = nil
        ) {
            self.media = media
            self.blocking = blocking
            self.nonce = nonce
            self.title = title
        }
    }
}

extension WHATWG.HTML.Style.Element {

    @inlinable public static var tag: String { "style" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.metadata]
    public static let content: WHATWG.HTML.Content = .init(model: .text)
}
