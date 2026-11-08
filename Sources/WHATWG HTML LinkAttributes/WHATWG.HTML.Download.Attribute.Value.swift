public import WHATWG_HTML_Shared

extension WHATWG.HTML.Download.Attribute {
    public enum Value: Sendable, Hashable {

        case boolean(Bool)

        case withFilename(String)
    }
}
