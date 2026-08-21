public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Number: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var max: WHATWG.HTML.Max.Attribute?

        public var min: WHATWG.HTML.Min.Attribute?

        public var placeholder: WHATWG.HTML.Placeholder.Attribute?

        public var readonly: WHATWG.HTML.Readonly.Attribute?

        public var step: WHATWG.HTML.Step.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            min: WHATWG.HTML.Min.Attribute? = nil,
            max: WHATWG.HTML.Max.Attribute? = nil,
            placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
            readonly: WHATWG.HTML.Readonly.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil,
            step: WHATWG.HTML.Step.Attribute? = nil
        ) {
            self.value = value
            self.min = min
            self.max = max
            self.placeholder = placeholder
            self.readonly = readonly
            self.required = required
            self.step = step
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let number: Self = .number()

    public static func number(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        min: WHATWG.HTML.Min.Attribute? = nil,
        max: WHATWG.HTML.Max.Attribute? = nil,
        placeholder: WHATWG.HTML.Placeholder.Attribute? = nil,
        readonly: WHATWG.HTML.Readonly.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil,
        step: WHATWG.HTML.Step.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .number(
                .init(
                    value: value,
                    min: min,
                    max: max,
                    placeholder: placeholder,
                    readonly: readonly,
                    required: required,
                    step: step
                )
            )
        )
    }
}
