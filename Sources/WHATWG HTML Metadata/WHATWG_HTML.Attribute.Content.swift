// Content.swift
// WHATWG HTML Metadata
//
// Defines the content attribute for meta elements

public import WHATWG_HTML_Shared

extension WHATWG_HTML.Attribute {
    /// Represents the `content` attribute that specifies the value associated with http-equiv or name attributes.
    ///
    /// Used primarily with `<meta>` elements to provide metadata values.
    @dynamicMemberLookup public struct Content: WHATWG_HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG_HTML.Attribute.Content {
    @inlinable public static var attribute: String { "content" }
}

extension WHATWG_HTML.Attribute.Content: CustomStringConvertible { public var description: String { rawValue } }

extension WHATWG_HTML.Attribute.Content: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) { self.init(value: value) }
}

extension WHATWG_HTML.Attribute.Content: RawRepresentable {
    public init?(rawValue: String) { self.init(value: rawValue) }
}
