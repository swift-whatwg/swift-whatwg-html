public import WHATWG_HTML_FormAttributes
import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Area.Element {
    public enum Shape: Sendable, Hashable {

        case rect(coords: String)

        case circle(coords: String)

        case poly(coords: String)

        case `default`
    }
}
