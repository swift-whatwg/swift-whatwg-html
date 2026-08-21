public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Form {

    public struct Element: WHATWG.HTML.Element {

        @available(
            *,
            deprecated,
            message: "Use accept attribute on input[type=file] elements instead"
        )
        public var accept: WHATWG.HTML.Accept.Attribute?

        public var acceptCharset: WHATWG.HTML.AcceptCharset.Attribute?

        public var autocapitalize: WHATWG.HTML.Autocapitalize.Attribute?

        public var autocomplete: WHATWG.HTML.Autocomplete.Attribute?

        public var name: WHATWG.HTML.Name.Attribute?

        public var rel: WHATWG.HTML.Rel.Attribute?

        public var action: WHATWG.HTML.Action.Attribute?

        public var enctype: WHATWG.HTML.EncType.Attribute?

        public var method: WHATWG.HTML.Method.Attribute?

        public var novalidate: WHATWG.HTML.Novalidate.Attribute?

        public var target: WHATWG.HTML.Target.Attribute?

        public init(
            autocapitalize: WHATWG.HTML.Autocapitalize.Attribute? = nil,
            autocomplete: WHATWG.HTML.Autocomplete.Attribute? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil,
            rel: WHATWG.HTML.Rel.Attribute? = nil,
            action: WHATWG.HTML.Action.Attribute? = nil,
            enctype: WHATWG.HTML.EncType.Attribute? = nil,
            method: WHATWG.HTML.Method.Attribute? = nil,
            novalidate: WHATWG.HTML.Novalidate.Attribute? = nil,
            target: WHATWG.HTML.Target.Attribute? = nil
        ) {
            self.autocapitalize = autocapitalize
            self.autocomplete = autocomplete
            self.name = name
            self.rel = rel
            self.action = action
            self.enctype = enctype
            self.method = method
            self.novalidate = novalidate
            self.target = target
        }
    }
}

extension WHATWG.HTML.Form.Element {
    @inlinable public static var tag: String { "form" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [.flow, .palpable]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
