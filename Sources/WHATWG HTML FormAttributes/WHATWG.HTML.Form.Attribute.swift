public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Form {
    public struct Attribute: Sendable, Hashable {

        public var acceptCharset: WHATWG.HTML.AcceptCharset.Attribute?

        public var action: WHATWG.HTML.FormAction.Attribute?

        public var enctype: WHATWG.HTML.FormEncType.Attribute?

        public var method: WHATWG.HTML.FormMethod.Attribute?

        public var novalidate: WHATWG.HTML.FormNovalidate.Attribute?

        public var target: WHATWG.HTML.FormTarget.Attribute?

        public init(
            acceptCharset: WHATWG.HTML.AcceptCharset.Attribute? = nil,
            action: WHATWG.HTML.FormAction.Attribute? = nil,
            enctype: WHATWG.HTML.FormEncType.Attribute? = nil,
            method: WHATWG.HTML.FormMethod.Attribute? = nil,
            novalidate: WHATWG.HTML.FormNovalidate.Attribute? = nil,
            target: WHATWG.HTML.FormTarget.Attribute? = nil
        ) {
            self.acceptCharset = acceptCharset
            self.action = action
            self.enctype = enctype
            self.method = method
            self.novalidate = novalidate
            self.target = target
        }
    }
}

extension WHATWG.HTML.Form.Attribute {
    public mutating func action(_ value: WHATWG.HTML.FormAction.Attribute?) { self.action = value }

    public mutating func enctype(_ value: WHATWG.HTML.FormEncType.Attribute?) {
        self.enctype = value
    }
    public mutating func method(_ value: WHATWG.HTML.FormMethod.Attribute?) { self.method = value }
    public mutating func novalidate(_ value: WHATWG.HTML.FormNovalidate.Attribute?) {
        self.novalidate = value
    }
    public mutating func target(_ value: WHATWG.HTML.FormTarget.Attribute?) { self.target = value }
}

extension WHATWG.HTML.Form.Attribute { public typealias ID = WHATWG.HTML.Id.Attribute }
