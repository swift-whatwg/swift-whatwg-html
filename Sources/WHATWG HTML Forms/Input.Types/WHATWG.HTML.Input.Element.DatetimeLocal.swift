public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct DatetimeLocal: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var max: WHATWG.HTML.Max.Attribute?

        public var min: WHATWG.HTML.Min.Attribute?

        public var step: WHATWG.HTML.Step.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            min: WHATWG.HTML.Min.Attribute? = nil,
            max: WHATWG.HTML.Max.Attribute? = nil,
            step: WHATWG.HTML.Step.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
        ) {
            self.value = value
            self.min = min
            self.max = max
            self.step = step
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let datetimeLocal: Self = .datetimeLocal()

    public static func datetimeLocal(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        min: WHATWG.HTML.Min.Attribute? = nil,
        max: WHATWG.HTML.Max.Attribute? = nil,
        step: WHATWG.HTML.Step.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .datetimeLocal(.init(value: value, min: min, max: max, step: step))
        )
    }
}
