public import WHATWG_HTML_Shared

extension WHATWG.HTML.ThematicBreak {

    public struct Element: WHATWG.HTML.Element {

        public init() {}
    }
}

extension WHATWG.HTML.ThematicBreak.Element {

    @inlinable public static var tag: String { "hr" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow]
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)
}
