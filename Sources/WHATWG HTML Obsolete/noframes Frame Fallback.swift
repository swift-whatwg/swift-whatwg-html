// noframes Frame Fallback.swift
// WHATWG HTML Obsolete
//
// Defines the frame fallback element (<noframes>)

public import WHATWG_HTML_Shared

/// Represents the obsolete `<noframes>` element that provided fallback content for frame-incompatible browsers.
///
/// **Deprecated**: Frames are obsolete. Use modern layout techniques instead.
@available(
    *,
    deprecated,
    message: "The noframes element is obsolete. Use modern layout techniques instead."
) public struct FrameFallback: WHATWG_HTML.Element.`Protocol` {

    public init() {}
}

@available(
    *,
    deprecated,
    message: "The noframes element is obsolete. Use modern layout techniques instead."
)
extension FrameFallback {
    @inlinable public static var tag: String { "noframes" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
