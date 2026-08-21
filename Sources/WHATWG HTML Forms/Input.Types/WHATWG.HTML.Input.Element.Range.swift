public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Range: Sendable, Hashable {

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var max: WHATWG.HTML.Max.Attribute?

        public var min: WHATWG.HTML.Min.Attribute?

        public var step: WHATWG.HTML.Step.Attribute?

        public var list: WHATWG.HTML.List.Attribute?

        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            min: WHATWG.HTML.Min.Attribute? = nil,
            max: WHATWG.HTML.Max.Attribute? = nil,
            step: WHATWG.HTML.Step.Attribute? = nil,
            list: WHATWG.HTML.List.Attribute? = nil
        ) {
            self.value = value
            self.min = min
            self.max = max
            self.step = step
            self.list = list
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let range: Self = .range()

    public static func range(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        min: WHATWG.HTML.Min.Attribute? = nil,
        max: WHATWG.HTML.Max.Attribute? = nil,
        step: WHATWG.HTML.Step.Attribute? = nil,
        list: WHATWG.HTML.List.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .range(.init(value: value, min: min, max: max, step: step, list: list))
        )
    }
}
