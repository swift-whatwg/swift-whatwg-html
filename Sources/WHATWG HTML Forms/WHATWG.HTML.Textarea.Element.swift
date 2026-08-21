public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared
public import WHATWG_HTML_TableAttributes

extension WHATWG.HTML.Textarea {

    public struct Element: WHATWG.HTML.Element {

        public var autocapitalize: WHATWG.HTML.Autocapitalize.Attribute?

        public var autocomplete: WHATWG.HTML.Autocomplete.Attribute?

        public var autocorrect: WHATWG.HTML.Autocorrect.Attribute?

        public var autofocus: WHATWG.HTML.Autofocus.Attribute?

        public var cols: WHATWG.HTML.Cols.Attribute?

        public var dirname: WHATWG.HTML.Dirname.Attribute?

        public var disabled: WHATWG.HTML.Disabled.Attribute?

        public var form: WHATWG.HTML.Form.Attribute.ID?

        public var maxlength: WHATWG.HTML.Maxlength.Attribute?

        public var minlength: WHATWG.HTML.Minlength.Attribute?

        public var name: WHATWG.HTML.Name.Attribute?

        public var placeholder: WHATWG.HTML.Placeholder.Attribute?

        public var readonly: WHATWG.HTML.Readonly.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public var rows: WHATWG.HTML.Rows.Attribute?

        public var spellcheck: WHATWG.HTML.Spellcheck.Attribute?

        public var wrap: WHATWG.HTML.Wrap.Attribute?

        public init(
            autocapitalize: WHATWG.HTML.Autocapitalize.Attribute? = nil,
            autocomplete: WHATWG.HTML.Autocomplete.Attribute? = nil,
            autocorrect: WHATWG.HTML.Autocorrect.Attribute? = nil,
            autofocus: WHATWG.HTML.Autofocus.Attribute? = nil,
            cols: WHATWG.HTML.Cols.Attribute? = nil,
            dirname: WHATWG.HTML.Dirname.Attribute? = nil,
            disabled: WHATWG.HTML.Disabled.Attribute? = nil,
            form: WHATWG.HTML.Form.Attribute.ID? = nil,
            maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
            minlength: WHATWG.HTML.Minlength.Attribute? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil,
            placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
            readonly: WHATWG.HTML.Readonly.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil,
            rows: WHATWG.HTML.Rows.Attribute? = nil,
            spellcheck: WHATWG.HTML.Spellcheck.Attribute? = nil,
            wrap: WHATWG.HTML.Wrap.Attribute? = nil
        ) {
            self.autocapitalize = autocapitalize
            self.autocomplete = autocomplete
            self.autocorrect = autocorrect
            self.autofocus = autofocus
            self.cols = cols
            self.dirname = dirname
            self.disabled = disabled
            self.form = form
            self.maxlength = maxlength
            self.minlength = minlength
            self.name = name
            self.placeholder = placeholder
            self.readonly = readonly
            self.required = required
            self.rows = rows
            self.spellcheck = spellcheck
            self.wrap = wrap

        }
    }
}

extension WHATWG.HTML.Textarea.Element {

    @inlinable public static var tag: String { "textarea" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .interactive, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .text)
}
