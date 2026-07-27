// param Object Parameter.swift
// WHATWG HTML Obsolete
//
// Defines the object parameter element (<param>)

public import WHATWG_HTML_FormAttributes
import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

/// Represents the obsolete `<param>` element that defined parameters for `<object>` elements.
///
/// **Deprecated**: Plugin-based content is no longer recommended.
@available(
    *,
    deprecated,
    message: "Plugin-based content is deprecated. Use modern web standards instead."
) public struct Param: WHATWG_HTML.Element.`Protocol` {

    /// Name of the parameter
    public var name: Name?

    /// Value of the parameter
    public var value: Value<String>?

    public init(name: Name? = nil, value: Value<String>? = nil) {
        self.name = name
        self.value = value
    }
}

@available(
    *,
    deprecated,
    message: "Plugin-based content is deprecated. Use modern web standards instead."
)
extension Param {
    @inlinable public static var tag: String { "param" }
    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(model: .categories([.flow]))
}
