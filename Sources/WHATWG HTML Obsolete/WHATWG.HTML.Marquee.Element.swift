public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Marquee {

    @available(*, deprecated, message: "Use CSS animations instead.")
    public struct Element: WHATWG.HTML.Element {

        public var behavior: WHATWG.HTML.Behavior.Attribute?
        public var bgcolor: String?
        public var direction: WHATWG.HTML.Direction.Attribute?
        public var height: WHATWG.HTML.Height.Attribute?
        public var hspace: String?
        public var loop: WHATWG.HTML.Loop.Attribute?
        public var scrollamount: String?
        public var scrolldelay: String?
        public var truespeed: WHATWG.HTML.Truespeed.Attribute?
        public var vspace: String?
        public var width: WHATWG.HTML.Width.Attribute?

        public init(
            behavior: WHATWG.HTML.Behavior.Attribute? = nil,
            bgcolor: String? = nil,
            direction: WHATWG.HTML.Direction.Attribute? = nil,
            height: WHATWG.HTML.Height.Attribute? = nil,
            hspace: String? = nil,
            loop: WHATWG.HTML.Loop.Attribute? = nil,
            scrollamount: String? = nil,
            scrolldelay: String? = nil,
            truespeed: WHATWG.HTML.Truespeed.Attribute? = nil,
            vspace: String? = nil,
            width: WHATWG.HTML.Width.Attribute? = nil
        ) {
            self.behavior = behavior
            self.bgcolor = bgcolor
            self.direction = direction
            self.height = height
            self.hspace = hspace
            self.loop = loop
            self.scrollamount = scrollamount
            self.scrolldelay = scrolldelay
            self.truespeed = truespeed
            self.vspace = vspace
            self.width = width
        }
    }
}

@available(*, deprecated, message: "Use CSS animations instead.")
extension WHATWG.HTML.Marquee.Element {
    @inlinable public static var tag: String { "marquee" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
