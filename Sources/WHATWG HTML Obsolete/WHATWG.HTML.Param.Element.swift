// noembed Embed Fallback.swift
// WHATWG HTML Obsolete
//
// Defines the embed fallback element (<noembed>)

public import WHATWG_HTML_Shared

/// Represents the obsolete `<noembed>` element that provided fallback content for browsers without embed support.
///
/// **Deprecated**: Modern browsers support `<embed>`, making this element unnecessary.
extension WHATWG.HTML.EmbedFallback {

public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Param {
    /// Represents the obsolete `<param>` element.
    @available(
        *,
        deprecated,
        message: "Plugin-based content is deprecated. Use modern web standards instead."
    ) public struct Element: WHATWG.HTML.Element {

        /// Name of the parameter
        public var name: WHATWG.HTML.Name.Attribute?

        /// Value of the parameter
        public var value: WHATWG.HTML.Value.Attribute<String>?

        public init(
            name: WHATWG.HTML.Name.Attribute? = nil,
            value: WHATWG.HTML.Value.Attribute<String>? = nil
        ) {
            self.name = name
            self.value = value
        }
    }
}

@available(
    *,
    deprecated,
    message: "Plugin-based content is deprecated. Use modern web standards instead."
)
extension WHATWG.HTML.Param.Element {
    @inlinable public static var tag: String { "param" }
    public static let categories: Set<WHATWG.HTML.Content.Category> = []
    public static let content: WHATWG.HTML.Content = .init(model: .categories([.flow]))
}
