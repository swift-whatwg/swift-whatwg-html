public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_ScriptAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Embed {

    public struct Element: WHATWG.HTML.Element {

        public var src: WHATWG.HTML.Src.Attribute?

        public var type: WHATWG.HTML.Script.`Type`.Attribute?

        public var height: WHATWG.HTML.Height.Attribute?

        public var width: WHATWG.HTML.Width.Attribute?

        public init(
            src: WHATWG.HTML.Src.Attribute? = nil,
            type: WHATWG.HTML.Script.`Type`.Attribute? = nil,
            width: WHATWG.HTML.Width.Attribute? = nil,
            height: WHATWG.HTML.Height.Attribute? = nil
        ) {
            self.src = src
            self.type = type
            self.width = width
            self.height = height
        }
    }
}

extension WHATWG.HTML.Embed.Element {

    @inlinable public static var tag: String { "embed" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .embedded, .interactive, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
