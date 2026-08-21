public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_LinkAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Base {

    public struct Element: WHATWG.HTML.Element {

        public var configuration: Configuration

        public init(configuration: Configuration) { self.configuration = configuration }

        public init(href: WHATWG.HTML.Href.Attribute) { self.configuration = .href(href) }

        public init(target: WHATWG.HTML.Target.Attribute) { self.configuration = .target(target) }

        public init(href: WHATWG.HTML.Href.Attribute, target: WHATWG.HTML.Target.Attribute) {
            self.configuration = .both(href: href, target: target)
        }
    }
}

extension WHATWG.HTML.Base.Element {
    @inlinable public static var tag: String { "base" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = [.metadata]
    public static let content: WHATWG.HTML.Content = .init(model: .nothing)

    public enum Configuration: Sendable, Hashable {

        case href(WHATWG.HTML.Href.Attribute)

        case target(WHATWG.HTML.Target.Attribute)

        case both(href: WHATWG.HTML.Href.Attribute, target: WHATWG.HTML.Target.Attribute)
    }

    public var href: WHATWG.HTML.Href.Attribute? {
        switch configuration {
        case .href(let href): return href
        case .both(let href, _): return href
        case .target: return nil
        }
    }

    public var target: WHATWG.HTML.Target.Attribute? {
        switch configuration {
        case .target(let target): return target
        case .both(_, let target): return target
        case .href: return nil
        }
    }
}
