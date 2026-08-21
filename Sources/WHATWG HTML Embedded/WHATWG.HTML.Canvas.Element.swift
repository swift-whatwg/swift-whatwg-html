public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Canvas {

    public struct Element: WHATWG.HTML.Element {

        public var width: WHATWG.HTML.Width.Attribute?

        public var height: WHATWG.HTML.Height.Attribute?

        public init(
            width: WHATWG.HTML.Width.Attribute? = nil,
            height: WHATWG.HTML.Height.Attribute? = nil
        ) {
            self.width = width
            self.height = height
        }
    }
}

extension WHATWG.HTML.Canvas.Element {

    @inlinable public static var tag: String { "canvas" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .embedded, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .transparent)
}
