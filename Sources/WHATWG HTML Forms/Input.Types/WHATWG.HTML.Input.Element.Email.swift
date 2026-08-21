public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Email: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var maxlength: WHATWG.HTML.Maxlength.Attribute?

        public var minlength: WHATWG.HTML.Minlength.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public var multiple: WHATWG.HTML.Multiple.Attribute?

        public var pattern: WHATWG.HTML.Pattern.Attribute?

        public var placeholder: WHATWG.HTML.Placeholder.Attribute?

        public var readonly: WHATWG.HTML.Readonly.Attribute?

        public var size: WHATWG.HTML.Size.Attribute?

        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
            minlength: WHATWG.HTML.Minlength.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil,
            multiple: WHATWG.HTML.Multiple.Attribute? = nil,
            pattern: WHATWG.HTML.Pattern.Attribute? = nil,
            placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
            readonly: WHATWG.HTML.Readonly.Attribute? = nil,
            size: WHATWG.HTML.Size.Attribute? = nil
        ) {
            self.value = value
            self.maxlength = maxlength
            self.minlength = minlength
            self.required = required
            self.multiple = multiple
            self.pattern = pattern
            self.placeholder = placeholder
            self.readonly = readonly
            self.size = size
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let email: Self = .email()

    public static func email(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        maxlength: WHATWG.HTML.Maxlength.Attribute? = nil,
        minlength: WHATWG.HTML.Minlength.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil,
        multiple: WHATWG.HTML.Multiple.Attribute? = nil,
        pattern: WHATWG.HTML.Pattern.Attribute? = nil,
        placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
        readonly: WHATWG.HTML.Readonly.Attribute? = nil,
        size: WHATWG.HTML.Size.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .email(
                .init(
                    value: value,
                    maxlength: maxlength,
                    minlength: minlength,
                    required: required,
                    multiple: multiple,
                    pattern: pattern,
                    placeholder: placeholder,
                    readonly: readonly,
                    size: size
                )
            )
        )
    }
}
