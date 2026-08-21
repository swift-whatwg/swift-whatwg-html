public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Week: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var list: WHATWG.HTML.List.Attribute?

        public var min: WHATWG.HTML.Min.Attribute?

        public var max: WHATWG.HTML.Max.Attribute?

        public var readonly: WHATWG.HTML.Readonly.Attribute?

        public var step: WHATWG.HTML.Step.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            list: WHATWG.HTML.List.Attribute? = nil,
            min: WHATWG.HTML.Min.Attribute? = nil,
            max: WHATWG.HTML.Max.Attribute? = nil,
            readonly: WHATWG.HTML.Readonly.Attribute? = nil,
            step: WHATWG.HTML.Step.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
        ) {
            self.value = value
            self.list = list
            self.max = max
            self.min = min
            self.readonly = readonly
            self.step = step
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let week: Self = .week()

    public static func week(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        list: WHATWG.HTML.List.Attribute? = nil,
        min: WHATWG.HTML.Min.Attribute? = nil,
        max: WHATWG.HTML.Max.Attribute? = nil,
        readonly: WHATWG.HTML.Readonly.Attribute? = nil,
        step: WHATWG.HTML.Step.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .week(
                .init(
                    value: value,
                    list: list,
                    min: min,
                    max: max,
                    readonly: readonly,
                    step: step,
                    required: required
                )
            )
        )
    }
}
