public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Track {

    public struct Element: WHATWG.HTML.Element {

        public var `default`: WHATWG.HTML.Default.Attribute?

        public var kind: WHATWG.HTML.Kind.Attribute?

        public var label: WHATWG.HTML.Label.Attribute?

        public var src: WHATWG.HTML.Src.Attribute

        public var srclang: WHATWG.HTML.SrcLang.Attribute?

        public init(
            default: WHATWG.HTML.Default.Attribute? = nil,
            kind: WHATWG.HTML.Kind.Attribute? = nil,
            src: WHATWG.HTML.Src.Attribute,
            srclang: WHATWG.HTML.SrcLang.Attribute? = nil,
            label: WHATWG.HTML.Label.Attribute? = nil
        ) {
            self.default = `default`
            self.kind = kind
            self.src = src
            self.srclang = srclang
            self.label = label
        }
    }
}

extension WHATWG.HTML.Track.Element {

    @inlinable public static var tag: String { "track" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
