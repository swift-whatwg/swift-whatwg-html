public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.InlineFrame {

    public struct Element: WHATWG.HTML.Element {

        public var src: WHATWG.HTML.Src.Attribute?

        public var srcdoc: String?

        public var name: WHATWG.HTML.Name.Attribute?

        public var sandbox: String?

        public var allowfullscreen: WHATWG.HTML.Allowfullscreen.Attribute?

        public var allow: WHATWG.HTML.Allow.Attribute?

        public var width: WHATWG.HTML.Width.Attribute?

        public var height: WHATWG.HTML.Height.Attribute?

        public var loading: WHATWG.HTML.Loading.Attribute?

        public var referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute?

        public init(
            src: WHATWG.HTML.Src.Attribute? = nil,
            srcdoc: String? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil,
            sandbox: String? = nil,
            allowfullscreen: WHATWG.HTML.Allowfullscreen.Attribute? = nil,
            allow: WHATWG.HTML.Allow.Attribute? = nil,
            width: WHATWG.HTML.Width.Attribute? = nil,
            height: WHATWG.HTML.Height.Attribute? = nil,
            loading: WHATWG.HTML.Loading.Attribute? = nil,
            referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute? = nil
        ) {
            self.src = src
            self.srcdoc = srcdoc
            self.name = name
            self.sandbox = sandbox
            self.allowfullscreen = allowfullscreen
            self.allow = allow
            self.width = width
            self.height = height
            self.loading = loading
            self.referrerpolicy = referrerpolicy

        }
    }
}

extension WHATWG.HTML.InlineFrame.Element {

    @inlinable public static var tag: String { "iframe" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .embedded, .interactive, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
