// dir Directory.swift
// WHATWG HTML Obsolete
//
// Defines the directory element (<dir>)

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Directory {
    /// Represents the obsolete `<dir>` element that was used for directory listings.
    ///
    /// **Deprecated**: Use `<ul>` instead.
    @available(*, deprecated, message: "Use <ul> instead.")
    public struct Element: WHATWG.HTML.Element {

        /// Boolean attribute that hints the list should be rendered in a compact style
        public var compact: WHATWG.HTML.Compact.Attribute?

        public init(compact: WHATWG.HTML.Compact.Attribute? = nil) { self.compact = compact }
    }
}

@available(*, deprecated, message: "Use <ul> instead.")
extension WHATWG.HTML.Directory.Element {
    @inlinable public static var tag: String { "dir" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
