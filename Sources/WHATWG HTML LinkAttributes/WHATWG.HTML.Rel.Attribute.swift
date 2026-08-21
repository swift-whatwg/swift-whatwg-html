public import WHATWG_HTML_Shared

extension WHATWG.HTML.Rel {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public var rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Rel.Attribute {

    @inlinable public static var attribute: String { "rel" }
}

extension WHATWG.HTML.Rel.Attribute: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = String

    public init(arrayLiteral elements: String...) {
        self.rawValue = elements.joined(separator: " ")
    }
}

extension WHATWG.HTML.Rel.Attribute {

    public static let secureExternal: Self = .init([
        WHATWG.HTML.Rel.Attribute.external, .noopener, .noreferrer,
    ])
}

extension WHATWG.HTML.Rel.Attribute {
    public init(_ rels: [WHATWG.HTML.Rel.Attribute]) {
        self = .init(rels.map(\.description).joined(separator: " "))
    }
}

extension WHATWG.HTML.Rel.Attribute {
    @inlinable public static var alternate: Self { "alternate" }
    @inlinable public static var author: Self { "author" }
    @inlinable public static var help: Self { "help" }
    @inlinable public static var license: Self { "license" }
    @inlinable public static var next: Self { "next" }
    @inlinable public static var prev: Self { "prev" }
    @inlinable public static var search: Self { "search" }

    @inlinable public static var canonical: Self { "canonical" }
    @inlinable public static var stylesheet: Self { "stylesheet" }
    @inlinable public static var icon: Self { "icon" }
    @inlinable public static var manifest: Self { "manifest" }
    @inlinable public static var modulepreload: Self { "modulepreload" }
    @inlinable public static var preload: Self { "preload" }
    @inlinable public static var prefetch: Self { "prefetch" }
    @inlinable public static var preconnect: Self { "preconnect" }
    @inlinable public static var dnsPrefetch: Self { "dns-prefetch" }

    @inlinable public static var bookmark: Self { "bookmark" }
    @inlinable public static var external: Self { "external" }
    @inlinable public static var nofollow: Self { "nofollow" }
    @inlinable public static var noopener: Self { "noopener" }
    @inlinable public static var noreferrer: Self { "noreferrer" }
    @inlinable public static var tag: Self { "tag" }
    @inlinable public static var me: Self { "me" }

    @inlinable public static var privacyPolicy: Self { "privacy-policy" }
    @inlinable public static var termsOfService: Self { "terms-of-service" }
}
