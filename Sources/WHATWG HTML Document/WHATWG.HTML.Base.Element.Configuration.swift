public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_Shared


extension WHATWG.HTML.Base.Element {
    public enum Configuration: Sendable, Hashable {

        case href(WHATWG.HTML.Href.Attribute)

        case target(WHATWG.HTML.Target.Attribute)

        case both(href: WHATWG.HTML.Href.Attribute, target: WHATWG.HTML.Target.Attribute)
    }
}
