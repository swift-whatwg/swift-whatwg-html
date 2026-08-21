public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct Image: Sendable, Hashable {

        public var src: WHATWG.HTML.Src.Attribute

        public var alt: WHATWG.HTML.Alt.Attribute?

        public var height: WHATWG.HTML.Height.Attribute?

        public var width: WHATWG.HTML.Width.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public var form: WHATWG.HTML.Form.Attribute

        public init(
            src: WHATWG.HTML.Src.Attribute,
            alt: WHATWG.HTML.Alt.Attribute? = nil,
            height: WHATWG.HTML.Height.Attribute? = nil,
            width: WHATWG.HTML.Width.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil,
            form: WHATWG.HTML.Form.Attribute = .init()
        ) {
            self.src = src
            self.alt = alt
            self.height = height
            self.width = width
            self.required = required
            self.form = form
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static func image(
        name: WHATWG.HTML.Name.Attribute? = nil,
        src: WHATWG.HTML.Src.Attribute,
        alt: WHATWG.HTML.Alt.Attribute? = nil,
        height: WHATWG.HTML.Height.Attribute? = nil,
        width: WHATWG.HTML.Width.Attribute? = nil,
        formId: WHATWG.HTML.Form.Attribute.ID? = nil,
        form: WHATWG.HTML.Form.Attribute,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: formId,
            type: .image(
                .init(
                    src: src,
                    alt: alt,
                    height: height,
                    width: width,
                    required: required,
                    form: form
                )
            )
        )
    }
}
