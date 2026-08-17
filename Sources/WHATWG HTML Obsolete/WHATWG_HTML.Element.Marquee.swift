// marquee Marquee.swift
// WHATWG HTML Obsolete
//
// Defines the marquee element (<marquee>)

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG_HTML.Element {
    /// Represents the obsolete `<marquee>` element that created scrolling text.
    ///
    /// **Deprecated**: Use CSS animations instead.
    @available(*, deprecated, message: "Use CSS animations instead.")
    public struct Marquee: WHATWG_HTML.Element.`Protocol` {

        public var behavior: Attribute.Behavior?
        public var bgcolor: String?
        public var direction: WHATWG_HTML.Attribute.Direction?
        public var height: Attribute.Height?
        public var hspace: String?
        public var loop: Attribute.Loop?
        public var scrollamount: String?
        public var scrolldelay: String?
        public var truespeed: Attribute.Truespeed?
        public var vspace: String?
        public var width: Attribute.Width?

        public init(
            behavior: Attribute.Behavior? = nil,
            bgcolor: String? = nil,
            direction: WHATWG_HTML.Attribute.Direction? = nil,
            height: Attribute.Height? = nil,
            hspace: String? = nil,
            loop: Attribute.Loop? = nil,
            scrollamount: String? = nil,
            scrolldelay: String? = nil,
            truespeed: Attribute.Truespeed? = nil,
            vspace: String? = nil,
            width: Attribute.Width? = nil
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
extension WHATWG_HTML.Element.Marquee {
    @inlinable public static var tag: String { "marquee" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
