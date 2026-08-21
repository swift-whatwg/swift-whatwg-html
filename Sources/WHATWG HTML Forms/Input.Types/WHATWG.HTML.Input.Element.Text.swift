public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Text: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var list: WHATWG.HTML.List.Attribute?

        public var maxlength: WHATWG.HTML.Maxlength.Attribute?

        public var minlength: WHATWG.HTML.Minlength.Attribute?

        public var pattern: WHATWG.HTML.Pattern.Attribute?

        public var placeholder: WHATWG.HTML.Placeholder.Attribute?

        public var readonly: WHATWG.HTML.Readonly.Attribute?

        public var size: WHATWG.HTML.Size.Attribute?

        public var spellcheck: WHATWG.HTML.Spellcheck.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            list: WHATWG.HTML.List.Attribute? = nil,
            maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
            minlength: WHATWG.HTML.Minlength.Attribute? = nil,
            pattern: WHATWG.HTML.Pattern.Attribute? = nil,
            placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
            readonly: WHATWG.HTML.Readonly.Attribute? = nil,
            size: WHATWG.HTML.Size.Attribute? = nil,
            spellcheck: WHATWG.HTML.Spellcheck.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
        ) {
            self.value = value
            self.list = list
            self.maxlength = maxlength
            self.minlength = minlength
            self.pattern = pattern
            self.placeholder = placeholder
            self.readonly = readonly
            self.size = size
            self.spellcheck = spellcheck
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let text: Self = .text()

    public static func text(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        list: WHATWG.HTML.List.Attribute? = nil,
        maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
        minlength: WHATWG.HTML.Minlength.Attribute? = nil,
        pattern: WHATWG.HTML.Pattern.Attribute? = nil,
        placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
        readonly: WHATWG.HTML.Readonly.Attribute? = nil,
        size: WHATWG.HTML.Size.Attribute? = nil,
        spellcheck: WHATWG.HTML.Spellcheck.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .text(
                .init(
                    value: value,
                    list: list,
                    maxlength: maxlength,
                    minlength: minlength,
                    pattern: pattern,
                    placeholder: placeholder,
                    readonly: readonly,
                    size: size,
                    spellcheck: spellcheck,
                    required: required
                )
            )
        )
    }
}
