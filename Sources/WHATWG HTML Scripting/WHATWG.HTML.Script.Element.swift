public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_ScriptAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Script {

    public struct Element: WHATWG.HTML.Element {

        public var src: WHATWG.HTML.Src.Attribute?

        public var async: WHATWG.HTML.Async.Attribute?

        public var `defer`: WHATWG.HTML.Defer.Attribute?

        public var type: WHATWG.HTML.Script.`Type`.Attribute?

        public var integrity: WHATWG.HTML.Integrity.Attribute?

        public var referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute?

        public var nomodule: WHATWG.HTML.Nomodule.Attribute?

        public var fetchpriority: WHATWG.HTML.FetchPriority.Attribute?

        public var blocking: WHATWG.HTML.Blocking.Attribute?

        public var crossorigin: WHATWG.HTML.Crossorigin.Attribute?

        public var nonce: WHATWG.HTML.Nonce.Attribute?

        public var attributionsrc: WHATWG.HTML.AttributionSrc.Attribute?

        public init(
            src: WHATWG.HTML.Src.Attribute? = nil,
            async: WHATWG.HTML.Async.Attribute? = nil,
            defer: WHATWG.HTML.Defer.Attribute? = nil,
            type: WHATWG.HTML.Script.`Type`.Attribute? = nil,
            integrity: WHATWG.HTML.Integrity.Attribute? = nil,
            referrerpolicy: WHATWG.HTML.ReferrerPolicy.Attribute? = nil,
            nomodule: WHATWG.HTML.Nomodule.Attribute? = nil,
            fetchpriority: WHATWG.HTML.FetchPriority.Attribute? = nil,
            blocking: WHATWG.HTML.Blocking.Attribute? = nil,
            crossorigin: WHATWG.HTML.Crossorigin.Attribute? = nil,
            nonce: WHATWG.HTML.Nonce.Attribute? = nil,
            attributionsrc: WHATWG.HTML.AttributionSrc.Attribute? = nil
        ) {
            self.src = src
            self.async = async
            self.defer = `defer`
            self.type = type
            self.integrity = integrity
            self.referrerpolicy = referrerpolicy
            self.nomodule = nomodule
            self.fetchpriority = fetchpriority
            self.blocking = blocking
            self.crossorigin = crossorigin
            self.nonce = nonce
            self.attributionsrc = attributionsrc

        }
    }
}

extension WHATWG.HTML.Script.Element {

    @inlinable public static var tag: String { "script" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .metadata, .flow, .phrasing, .`script-supporting`,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .text)
}
