public import WHATWG_HTML_Shared

extension WHATWG.HTML.Big {

    @available(*, deprecated, message: "Use CSS for styling instead")
    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

@available(*, deprecated, message: "Use CSS for styling instead")
extension WHATWG.HTML.Big.Element {

    @inlinable public static var tag: String { "big" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
