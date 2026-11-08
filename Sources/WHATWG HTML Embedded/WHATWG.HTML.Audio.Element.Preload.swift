public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Audio.Element {
    public enum Preload: String, Sendable {

        case none

        case metadata

        case auto
    }
}
