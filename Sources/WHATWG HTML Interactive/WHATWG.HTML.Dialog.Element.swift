public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Dialog {

    public struct Element: WHATWG.HTML.Element {

        public var open: WHATWG.HTML.Open.Attribute?

        public init(open: WHATWG.HTML.Open.Attribute? = nil) {
            self.open = open

        }
    }
}

extension WHATWG.HTML.Dialog.Element {

    @inlinable public static var tag: String { "dialog" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
