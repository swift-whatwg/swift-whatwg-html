public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_ScriptAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Meta {

    public struct Element: WHATWG.HTML.Element {

        public var charset: WHATWG.HTML.CharSet.Attribute?

        public var content: WHATWG.HTML.Content.Attribute?

        public var httpEquiv: WHATWG.HTML.HttpEquiv.Attribute?

        public var media: WHATWG.HTML.Media.Attribute?

        public var name: WHATWG.HTML.Meta.Name.Attribute?

        public init(
            charset: WHATWG.HTML.CharSet.Attribute? = nil,
            content: WHATWG.HTML.Content.Attribute? = nil,
            httpEquiv: WHATWG.HTML.HttpEquiv.Attribute? = nil,
            media: WHATWG.HTML.Media.Attribute? = nil,
            name: WHATWG.HTML.Meta.Name.Attribute? = nil
        ) {
            self.charset = charset
            self.content = content
            self.httpEquiv = httpEquiv
            self.media = media
            self.name = name
        }

        public init(
            name: WHATWG.HTML.Meta.Name.Attribute,
            content: WHATWG.HTML.Content.Attribute,
            media: WHATWG.HTML.Media.Attribute? = nil
        ) {
            self.name = name
            self.content = content
            self.media = media
        }

        public init(
            content: WHATWG.HTML.Content.Attribute,
            media: WHATWG.HTML.Media.Attribute? = nil
        ) {
            self.content = content
            self.media = media
        }

        public init(
            httpEquiv: WHATWG.HTML.HttpEquiv.Attribute,
            content: WHATWG.HTML.Content.Attribute
        ) {
            self.httpEquiv = httpEquiv
            self.content = content
        }
    }
}

extension WHATWG.HTML.Meta.Element {
    @inlinable public static var tag: String { "meta" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.metadata]
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}

extension WHATWG.HTML.Meta.Element {

    public static let utf8 = WHATWG.HTML.Meta.Element(charset: "utf-8")

    public static let viewport = WHATWG.HTML.Meta.Element(
        name: .viewport,
        content: "width=device-width, initial-scale=1"
    )

    public static func openGraph(
        property: String,
        content: WHATWG.HTML.Content.Attribute
    ) -> WHATWG.HTML.Meta.Element {
        return WHATWG.HTML.Meta.Element(name: .init(stringLiteral: property), content: content)
    }
}
