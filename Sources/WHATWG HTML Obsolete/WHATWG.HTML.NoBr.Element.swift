public import WHATWG_HTML_Shared

extension WHATWG.HTML.NoBr {

    @available(*, deprecated, message: "Use CSS property 'white-space: nowrap' instead.")
    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

@available(*, deprecated, message: "Use CSS property 'white-space: nowrap' instead.")
extension WHATWG.HTML.NoBr.Element {
    @inlinable public static var tag: String { "nobr" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
