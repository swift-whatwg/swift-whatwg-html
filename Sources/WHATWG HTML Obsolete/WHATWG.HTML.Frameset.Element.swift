// frameset Frameset.swift
// WHATWG HTML Obsolete
//
// Defines the frameset element (<frameset>)

public import WHATWG_HTML_Shared
public import WHATWG_HTML_TableAttributes

extension WHATWG.HTML.Frameset {
    /// Represents the obsolete `<frameset>` element that contained a set of `<frame>` elements.
    ///
    /// **Deprecated**: Use `<iframe>` and modern CSS layout instead.
    @available(*, deprecated, message: "Use <iframe> and modern CSS layout instead.")
    public struct Element: WHATWG.HTML.Element {

        /// Specifies the number and size of horizontal spaces in a frameset
        public var cols: WHATWG.HTML.Cols.Attribute?

        /// Specifies the number and size of vertical spaces in a frameset
        public var rows: WHATWG.HTML.Rows.Attribute?

        public init(
            cols: WHATWG.HTML.Cols.Attribute? = nil,
            rows: WHATWG.HTML.Rows.Attribute? = nil
        ) {
            self.cols = cols
            self.rows = rows
        }
    }
}

@available(*, deprecated, message: "Use <iframe> and modern CSS layout instead.")
extension WHATWG.HTML.Frameset.Element {
    @inlinable public static var tag: String { "frameset" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
