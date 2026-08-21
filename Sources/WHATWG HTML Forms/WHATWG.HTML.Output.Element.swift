public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Output {

    public struct Element: WHATWG.HTML.Element {

        public var `for`: WHATWG.HTML.For.Attribute?

        public var form: WHATWG.HTML.Form.Attribute.ID?

        public var name: WHATWG.HTML.Name.Attribute?

        public init(
            `for`: WHATWG.HTML.For.Attribute? = nil,
            form: WHATWG.HTML.Form.Attribute.ID? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil
        ) {
            self.`for` = `for`
            self.form = form
            self.name = name

        }
    }
}

extension WHATWG.HTML.Output.Element {

    @inlinable public static var tag: String { "output" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
