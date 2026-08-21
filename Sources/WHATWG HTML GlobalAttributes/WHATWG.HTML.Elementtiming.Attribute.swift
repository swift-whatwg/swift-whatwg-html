public import WHATWG_HTML_Shared

extension WHATWG.HTML.Elementtiming {

    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Elementtiming.Attribute {

    @inlinable public static var attribute: String { "elementtiming" }

    public init(category: String, name: String, separator: String = "-") {
        self.rawValue = "\(category)\(separator)\(name)"
    }

    public struct Category: Sendable, Hashable, ExpressibleByStringLiteral, CustomStringConvertible
    {
        public var value: String

        public init(_ value: String) { self.value = value }

        public init(stringLiteral value: String) { self.value = value }
    }

    public init(category: Category, name: String, separator: String = "-") {
        if category == .custom {
            self.rawValue = name
        } else {
            self.rawValue = "\(category.description)\(separator)\(name)"
        }
    }
}

extension WHATWG.HTML.Elementtiming.Attribute.Category {

    @inlinable public static var hero: Self { "hero" }

    @inlinable public static var main: Self { "main" }

    @inlinable public static var header: Self { "header" }

    @inlinable public static var nav: Self { "nav" }

    @inlinable public static var footer: Self { "footer" }

    @inlinable public static var image: Self { "image" }

    @inlinable public static var text: Self { "text" }

    @inlinable public static var interactive: Self { "interactive" }

    @inlinable public static var layout: Self { "layout" }

    @inlinable public static var custom: Self { "custom" }

    public var description: String { self.value }
}
