// font Font.swift
// WHATWG HTML Obsolete
//
// Defines the font element (<font>)

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Font {
    /// Represents the obsolete `<font>` element that specified font properties.
    ///
    /// **Deprecated**: Use CSS instead.
    @available(*, deprecated, message: "Use CSS for font styling instead.")
    public struct Element: WHATWG.HTML.Element {

        /// The color of the text
        public var color: WHATWG.HTML.Color.Attribute?

        /// The font face to use
        public var face: WHATWG.HTML.Face.Attribute?

        /// The font size
        public var size: WHATWG.HTML.Font.Size.Attribute?

        public init(
            color: WHATWG.HTML.Color.Attribute? = nil,
            face: WHATWG.HTML.Face.Attribute? = nil,
            size: WHATWG.HTML.Font.Size.Attribute? = nil
        ) {
            self.color = color
            self.face = face
            self.size = size
        }
    }
}

@available(*, deprecated, message: "Use CSS for font styling instead.")
extension WHATWG.HTML.Font.Element {
    @inlinable public static var tag: String { "font" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
