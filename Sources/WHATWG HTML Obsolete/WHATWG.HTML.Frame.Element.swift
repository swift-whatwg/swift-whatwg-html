public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Frame {

    public struct Element: WHATWG.HTML.Element {

        public var src: WHATWG.HTML.Src.Attribute?

        public var name: WHATWG.HTML.Name.Attribute?

        public var noresize: WHATWG.HTML.NoResize.Attribute?

        public var scrolling: WHATWG.HTML.Scrolling.Attribute?

        public var marginheight: WHATWG.HTML.MarginHeight.Attribute?

        public var marginwidth: WHATWG.HTML.MarginWidth.Attribute?

        public var frameborder: WHATWG.HTML.FrameBorder.Attribute?

        public init(
            src: WHATWG.HTML.Src.Attribute? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil,
            noresize: WHATWG.HTML.NoResize.Attribute? = nil,
            scrolling: WHATWG.HTML.Scrolling.Attribute? = nil,
            marginheight: WHATWG.HTML.MarginHeight.Attribute? = nil,
            marginwidth: WHATWG.HTML.MarginWidth.Attribute? = nil,
            frameborder: WHATWG.HTML.FrameBorder.Attribute? = nil
        ) {
            self.src = src
            self.name = name
            self.noresize = noresize
            self.scrolling = scrolling
            self.marginheight = marginheight
            self.marginwidth = marginwidth
            self.frameborder = frameborder
        }
    }
}

extension WHATWG.HTML.Frame.Element {

    @inlinable public static var tag: String { "frame" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
