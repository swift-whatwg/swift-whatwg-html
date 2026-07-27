// font Font.swift
// WHATWG HTML Obsolete
//
// Defines the font element (<font>)

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

/// Represents the obsolete `<font>` element that specified font properties.
///
/// **Deprecated**: Use CSS instead.
@available(*, deprecated, message: "Use CSS for font styling instead.")
public struct Font: WHATWG_HTML.Element.`Protocol` {

    /// The color of the text
    public var color: Color?

    /// The font face to use
    public var face: Face?

    /// The font size
    public var size: FontSize?

    public init(color: Color? = nil, face: Face? = nil, size: FontSize? = nil) {
        self.color = color
        self.face = face
        self.size = size
    }
}

@available(*, deprecated, message: "Use CSS for font styling instead.")
extension Font {
    @inlinable public static var tag: String { "font" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
