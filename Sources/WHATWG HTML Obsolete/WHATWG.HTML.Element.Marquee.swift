// marquee Marquee.swift
// WHATWG HTML Obsolete
//
// Defines the marquee element (<marquee>)

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Element {
    /// Represents the obsolete `<marquee>` element that created scrolling text.
    ///
    /// **Deprecated**: Use CSS animations instead.
    @available(*, deprecated, message: "Use CSS animations instead.")
    public struct Marquee: WHATWG.HTML.Element.`Protocol` {

        public var behavior: WHATWG.HTML.Attribute.Behavior?
        public var bgcolor: String?
        public var direction: WHATWG.HTML.Attribute.Direction?
        public var height: WHATWG.HTML.Attribute.Height?
        public var hspace: String?
        public var loop: WHATWG.HTML.Attribute.Loop?
        public var scrollamount: String?
        public var scrolldelay: String?
        public var truespeed: WHATWG.HTML.Attribute.Truespeed?
        public var vspace: String?
        public var width: WHATWG.HTML.Attribute.Width?

        public init(
            behavior: WHATWG.HTML.Attribute.Behavior? = nil,
            bgcolor: String? = nil,
            direction: WHATWG.HTML.Attribute.Direction? = nil,
            height: WHATWG.HTML.Attribute.Height? = nil,
            hspace: String? = nil,
            loop: WHATWG.HTML.Attribute.Loop? = nil,
            scrollamount: String? = nil,
            scrolldelay: String? = nil,
            truespeed: WHATWG.HTML.Attribute.Truespeed? = nil,
            vspace: String? = nil,
            width: WHATWG.HTML.Attribute.Width? = nil
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
extension WHATWG.HTML.Element.Marquee {
    @inlinable public static var tag: String { "marquee" }
    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = []
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.flow]))
}
