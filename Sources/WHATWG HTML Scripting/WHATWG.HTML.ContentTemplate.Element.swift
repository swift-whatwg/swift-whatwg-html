public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.ContentTemplate {

    public struct Element: WHATWG.HTML.Element {

        public var shadowrootmode: WHATWG.HTML.ShadowRootMode.Attribute?

        public var shadowrootclonable: WHATWG.HTML.ShadowRootClonable.Attribute?

        public var shadowrootdelegatesfocus: WHATWG.HTML.ShadowRootDelegatesFocus.Attribute?

        public init(
            shadowrootmode: WHATWG.HTML.ShadowRootMode.Attribute? = nil,
            shadowrootclonable: WHATWG.HTML.ShadowRootClonable.Attribute? = nil,
            shadowrootdelegatesfocus: WHATWG.HTML.ShadowRootDelegatesFocus.Attribute? = nil
        ) {
            self.shadowrootmode = shadowrootmode
            self.shadowrootclonable = shadowrootclonable
            self.shadowrootdelegatesfocus = shadowrootdelegatesfocus

        }
    }
}

extension WHATWG.HTML.ContentTemplate.Element {

    @inlinable public static var tag: String { "template" }

    public static let categories: Set<WHATWG.HTML.Content.Category> = [
        .metadata, .flow, .phrasing, .`script-supporting`,
    ]
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
