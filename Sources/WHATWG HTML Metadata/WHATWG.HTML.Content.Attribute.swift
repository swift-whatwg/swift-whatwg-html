// Content.swift
// WHATWG HTML Metadata
//
// Defines the content attribute for meta elements

public import WHATWG_HTML_Shared

extension WHATWG.HTML.Content {
    /// Represents the `content` attribute that specifies the value associated with http-equiv or name attributes.
    ///
    /// Used primarily with `<meta>` elements to provide metadata values.
    @dynamicMemberLookup public struct Attribute: WHATWG.HTML.StringAttribute {

        public let rawValue: String

        public init(value: String) { self.rawValue = value }
    }
}

extension WHATWG.HTML.Content.Attribute {
    @inlinable public static var attribute: String { "content" }
}

extension WHATWG.HTML.Content.Attribute: CustomStringConvertible {
    public var description: String { rawValue }
}

extension WHATWG.HTML.Content.Attribute: ExpressibleByStringLiteral {
    public init(stringLiteral value: String) { self.init(value: value) }
}

extension WHATWG.HTML.Content.Attribute: RawRepresentable {
    public init?(rawValue: String) { self.init(value: rawValue) }
}
