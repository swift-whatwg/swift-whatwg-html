public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Time {

    public struct Element: WHATWG.HTML.Element {

        public var datetime: WHATWG.HTML.DateTime.Attribute?

        public init(datetime: WHATWG.HTML.DateTime.Attribute? = nil) {
            self.datetime = datetime

        }
    }
}

extension WHATWG.HTML.Time.Element {

    @inlinable public static var tag: String { "time" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
