public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Input.Element {
    public struct File: Sendable, Hashable {

        public var accept: WHATWG.HTML.Accept.Attribute?

        public var capture: WHATWG.HTML.Capture.Attribute?

        public var multiple: WHATWG.HTML.Multiple.Attribute?

        public var required: WHATWG.HTML.Required.Attribute?

        public init(
            accept: WHATWG.HTML.Accept.Attribute? = nil,
            capture: WHATWG.HTML.Capture.Attribute? = nil,
            multiple: WHATWG.HTML.Multiple.Attribute? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
        ) {
            self.accept = accept
            self.capture = capture
            self.multiple = multiple
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {

    public static let file: Self = .file()

    public static func file(
        name: WHATWG.HTML.Name.Attribute? = nil,
        accept: WHATWG.HTML.Accept.Attribute? = nil,
        capture: WHATWG.HTML.Capture.Attribute? = nil,
        multiple: WHATWG.HTML.Multiple.Attribute? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        required: WHATWG.HTML.Required.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: form,
            type: .file(
                .init(accept: accept, capture: capture, multiple: multiple, required: required)
            )
        )
    }
}
