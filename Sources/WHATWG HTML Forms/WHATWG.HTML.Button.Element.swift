public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Button {

    public struct Element: WHATWG.HTML.Element {

        public var type: WHATWG.HTML.Button.`Type`.Attribute?

        public var disabled: WHATWG.HTML.Disabled.Attribute?

        public var form: WHATWG.HTML.Form.Attribute.ID?

        public var name: WHATWG.HTML.Name.Attribute?

        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var autofocus: WHATWG.HTML.Autofocus.Attribute?

        public var formaction: WHATWG.HTML.FormAction.Attribute?

        public var formenctype: WHATWG.HTML.FormEncType.Attribute?

        public var formmethod: WHATWG.HTML.FormMethod.Attribute?

        public var formnovalidate: WHATWG.HTML.FormNovalidate.Attribute?

        public var formtarget: WHATWG.HTML.FormTarget.Attribute?

        public var popovertarget: WHATWG.HTML.PopoverTarget.Attribute?

        public var popovertargetaction: WHATWG.HTML.PopoverTargetAction.Attribute?

        public init(
            type: WHATWG.HTML.Button.`Type`.Attribute? = nil,
            disabled: WHATWG.HTML.Disabled.Attribute? = nil,
            form: WHATWG.HTML.Form.Attribute.ID? = nil,
            name: WHATWG.HTML.Name.Attribute? = nil,
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            autofocus: WHATWG.HTML.Autofocus.Attribute? = nil,
            formaction: WHATWG.HTML.FormAction.Attribute? = nil,
            formenctype: WHATWG.HTML.FormEncType.Attribute? = nil,
            formmethod: WHATWG.HTML.FormMethod.Attribute? = nil,
            formnovalidate: WHATWG.HTML.FormNovalidate.Attribute? = nil,
            formtarget: WHATWG.HTML.FormTarget.Attribute? = nil,
            popovertarget: WHATWG.HTML.PopoverTarget.Attribute? = nil,
            popovertargetaction: WHATWG.HTML.PopoverTargetAction.Attribute? = nil
        ) {
            self.type = type
            self.disabled = disabled
            self.form = form
            self.name = name
            self.value = value
            self.autofocus = autofocus
            self.formaction = formaction
            self.formenctype = formenctype
            self.formmethod = formmethod
            self.formnovalidate = formnovalidate
            self.formtarget = formtarget
            self.popovertarget = popovertarget
            self.popovertargetaction = popovertargetaction
        }
    }
}

extension WHATWG.HTML.Button.Element {

    @inlinable public static var tag: String { "button" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .flow, .phrasing, .interactive, .palpable,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.phrasing]))
}
