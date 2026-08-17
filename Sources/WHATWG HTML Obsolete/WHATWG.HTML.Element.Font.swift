// font Font.swift
// WHATWG HTML Obsolete
//
// Defines the font element (<font>)

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Element {
    /// Represents the obsolete `<font>` element that specified font properties.
    ///
    /// **Deprecated**: Use CSS instead.
    @available(*, deprecated, message: "Use CSS for font styling instead.")
    public struct Font: WHATWG.HTML.Element.`Protocol` {

        /// The color of the text
        public var color: WHATWG.HTML.Attribute.Color?

        /// The font face to use
        public var face: WHATWG.HTML.Attribute.Face?

        /// The font size
        public var size: WHATWG.HTML.Attribute.FontSize?

        public init(
            color: WHATWG.HTML.Attribute.Color? = nil,
            face: WHATWG.HTML.Attribute.Face? = nil,
            size: WHATWG.HTML.Attribute.FontSize? = nil
        ) {
            self.color = color
            self.face = face
            self.size = size
        }
    }
}

@available(*, deprecated, message: "Use CSS for font styling instead.")
extension WHATWG.HTML.Element.Font {
    @inlinable public static var tag: String { "font" }
    public static let categories: Set<WHATWG.HTML.Element.Content.Category> = []
    public static let content: WHATWG.HTML.Element.Content = .init(model: .categories([.flow]))
}
