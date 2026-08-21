public import WHATWG_HTML_Shared

extension WHATWG.HTML.Meta.Name {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {
        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Meta.Name.Attribute {
    @inlinable public static var attribute: String { "name" }
}

extension WHATWG.HTML.Meta.Name.Attribute {

    @inlinable public static var application: Self { "application-name" }

    @inlinable public static var author: Self { "author" }

    @inlinable public static var description: Self { "description" }

    @inlinable public static var generator: Self { "generator" }

    @inlinable public static var keywords: Self { "keywords" }

    @inlinable public static var referrer: Self { "referrer" }

    @inlinable public static var themeColor: Self { "theme-color" }

    @inlinable public static var robots: Self { "robots" }

    @inlinable public static var viewport: Self { "viewport" }
}
