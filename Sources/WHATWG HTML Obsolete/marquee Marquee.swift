// marquee Marquee.swift
// WHATWG HTML Obsolete
//
// Defines the marquee element (<marquee>)

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

/// Represents the obsolete `<marquee>` element that created scrolling text.
///
/// **Deprecated**: Use CSS animations instead.
@available(*, deprecated, message: "Use CSS animations instead.")
public struct Marquee: WHATWG_HTML.Element.`Protocol` {

    public var behavior: Behavior?
    public var bgcolor: String?
    public var direction: WHATWG_HTML_GlobalAttributes.Direction?
    public var height: Height?
    public var hspace: String?
    public var loop: Loop?
    public var scrollamount: String?
    public var scrolldelay: String?
    public var truespeed: Truespeed?
    public var vspace: String?
    public var width: Width?

    public init(
        behavior: Behavior? = nil,
        bgcolor: String? = nil,
        direction: WHATWG_HTML_GlobalAttributes.Direction? = nil,
        height: Height? = nil,
        hspace: String? = nil,
        loop: Loop? = nil,
        scrollamount: String? = nil,
        scrolldelay: String? = nil,
        truespeed: Truespeed? = nil,
        vspace: String? = nil,
        width: Width? = nil
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

@available(*, deprecated, message: "Use CSS animations instead.")
extension Marquee {
    @inlinable public static var tag: String { "marquee" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
