public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Password: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var maxlength: WHATWG.HTML.Maxlength.Attribute?

        public var minlength: WHATWG.HTML.Minlength.Attribute?

        public var pattern: WHATWG.HTML.Pattern.Attribute?

        public var placeholder: WHATWG.HTML.Placeholder.Attribute?

        public var readonly: WHATWG.HTML.Readonly.Attribute?

        public var size: WHATWG.HTML.Size.Attribute?

        public var autocomplete: WHATWG.HTML.Autocomplete.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
            minlength: WHATWG.HTML.Minlength.Attribute? = nil,
            pattern: WHATWG.HTML.Pattern.Attribute? = nil,
            placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
            readonly: WHATWG.HTML.Readonly.Attribute? = nil,
            size: WHATWG.HTML.Size.Attribute? = nil,
            autocomplete: WHATWG.HTML.Autocomplete.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
        ) {
            self.value = value
            self.maxlength = maxlength
            self.minlength = minlength
            self.pattern = pattern
            self.placeholder = placeholder
            self.readonly = readonly
            self.size = size
            self.autocomplete = autocomplete
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let password: Self = .password()

    public static func password(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
        minlength: WHATWG.HTML.Minlength.Attribute? = nil,
        pattern: WHATWG.HTML.Pattern.Attribute? = nil,
        placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
        readonly: WHATWG.HTML.Readonly.Attribute? = nil,
        size: WHATWG.HTML.Size.Attribute? = nil,
        autocomplete: WHATWG.HTML.Autocomplete.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .password(
                .init(
                    value: value,
                    maxlength: maxlength,
                    minlength: minlength,
                    pattern: pattern,
                    placeholder: placeholder,
                    readonly: readonly,
                    size: size,
                    autocomplete: autocomplete,
                    required: required
                )
            )
        )
    }
}
