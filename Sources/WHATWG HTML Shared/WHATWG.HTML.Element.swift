extension WHATWG.HTML {
    public protocol Element: Sendable, Hashable {

        static var tag: String { get }

        static var categories: Set<WHATWG.HTML.Content.Category> { get }

        static var content: WHATWG.HTML.Content { get }
    }
}
