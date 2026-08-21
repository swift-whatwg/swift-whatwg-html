public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.OrderedList {

    public struct Element: WHATWG.HTML.Element {

        public var reversed: WHATWG.HTML.Reversed.Attribute?

        public var start: WHATWG.HTML.Start.Attribute?

        public var type: WHATWG.HTML.OrderedList.`Type`.Attribute?

        public init(
            reversed: WHATWG.HTML.Reversed.Attribute? = nil,
            start: WHATWG.HTML.Start.Attribute? = nil,
            type: WHATWG.HTML.OrderedList.`Type`.Attribute? = nil
        ) {
            self.reversed = reversed
            self.start = start
            self.type = type

        }
    }
}

extension WHATWG.HTML.OrderedList.Element {

    @inlinable public static var tag: String { "ol" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
