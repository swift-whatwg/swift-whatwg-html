public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.WebComponentSlot {

    public struct Element: WHATWG.HTML.Element {

        public var name: WHATWG.HTML.Name.Attribute?

        public init(name: WHATWG.HTML.Name.Attribute? = nil) {
            self.name = name

        }
    }
}

extension WHATWG.HTML.WebComponentSlot.Element {

    @inlinable public static var tag: String { "slot" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow, .phrasing]
    public static let content: WHATWG.HTML.Content = .init(model: .transparent)
}
