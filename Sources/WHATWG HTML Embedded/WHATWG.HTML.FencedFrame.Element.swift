public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.FencedFrame {

    public struct Element: WHATWG.HTML.Element {

        public var allow: WHATWG.HTML.Allow.Attribute?

        public var height: WHATWG.HTML.Height.Attribute?

        public var width: WHATWG.HTML.Width.Attribute?

        public init(
            allow: WHATWG.HTML.Allow.Attribute? = nil,
            height: WHATWG.HTML.Height.Attribute? = nil,
            width: WHATWG.HTML.Width.Attribute? = nil
        ) {
            self.allow = allow
            self.height = height
            self.width = width

        }
    }
}

extension WHATWG.HTML.FencedFrame.Element {

    @inlinable public static var tag: String { "fencedframe" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
