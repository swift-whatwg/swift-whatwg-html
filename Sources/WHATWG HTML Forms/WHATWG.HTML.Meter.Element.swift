public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Meter {

    public struct Element: WHATWG.HTML.Element {

        public var value: WHATWG.HTML.Value.Attribute<Double>

        public var min: WHATWG.HTML.Min.Attribute?

        public var max: WHATWG.HTML.Max.Attribute?

        public var low: WHATWG.HTML.Low.Attribute?

        public var high: WHATWG.HTML.High.Attribute?

        public var optimum: WHATWG.HTML.Optimum.Attribute?

        public var form: WHATWG.HTML.Form.Attribute.ID?

        public init(
            value: WHATWG.HTML.Value.Attribute<Double>,
            min: WHATWG.HTML.Min.Attribute? = nil,
            max: WHATWG.HTML.Max.Attribute? = nil,
            low: WHATWG.HTML.Low.Attribute? = nil,
            high: WHATWG.HTML.High.Attribute? = nil,
            optimum: WHATWG.HTML.Optimum.Attribute? = nil,
            form: WHATWG.HTML.Form.Attribute.ID? = nil
        ) {
            self.value = value
            self.min = min
            self.max = max
            self.low = low
            self.high = high
            self.optimum = optimum
            self.form = form

        }
    }
}

extension WHATWG.HTML.Meter.Element {

    @inlinable public static var tag: String { "meter" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
