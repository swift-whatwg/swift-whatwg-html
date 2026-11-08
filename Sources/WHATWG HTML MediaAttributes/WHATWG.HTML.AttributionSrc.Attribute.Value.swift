public import WHATWG_HTML_Shared


extension WHATWG.HTML.AttributionSrc.Attribute {
    public enum Value: Sendable, Hashable {

        case boolean(Bool)

        case urls(String)
    }
}
