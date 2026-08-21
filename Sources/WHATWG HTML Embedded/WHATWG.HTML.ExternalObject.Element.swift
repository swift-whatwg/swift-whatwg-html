public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.ExternalObject {

    public struct Element: WHATWG.HTML.Element {

        public var data: WHATWG.HTML.ExternalObject.Data.Attribute?

        public var type: WHATWG.HTML.ExternalObject.`Type`.Attribute?

        public var form: WHATWG.HTML.Form.Attribute.ID?

        public var name: WHATWG.HTML.Name.Attribute?

        public var height: WHATWG.HTML.Height.Attribute?

        public var width: WHATWG.HTML.Width.Attribute?

        public var usemap: WHATWG.HTML.Usemap.Attribute?

        public init(
            data: WHATWG.HTML.ExternalObject.Data.Attribute? = nil,
            type: WHATWG.HTML.ExternalObject.`Type`.Attribute? = nil,
            form: WHATWG.HTML.Form.Attribute.ID? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil,
            height: WHATWG.HTML.Height.Attribute? = nil,
            width: WHATWG.HTML.Width.Attribute? = nil,
            usemap: WHATWG.HTML.Usemap.Attribute? = nil
        ) {
            self.data = data
            self.type = type
            self.form = form
            self.name = name
            self.height = height
            self.width = width
            self.usemap = usemap

        }
    }
}

extension WHATWG.HTML.ExternalObject.Element {

    @inlinable public static var tag: String { "object" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .embedded, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .transparent)
}
