// ===----------------------------------------------------------------------===//
//
// Copyright (c) 2025 Coen ten Thije Boonkkamp
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of project contributors
//
// SPDX-License-Identifier: Apache-2.0
//
// ===----------------------------------------------------------------------===//

public import WHATWG_HTML_FormAttributes
public import WHATWG_HTML_MediaAttributes
public import WHATWG_HTML_Shared

/// Represents an HTML option group element (`<optgroup>`), which creates a grouping of options within a `<select>` element.
///
/// The `OptionGroup` struct provides a type-safe way to create HTML option groups with various attributes.
///
/// ## Example
///
/// ```swift
/// select {
///     optgroup(label: "Theropods") {
///         option { "Tyrannosaurus" }
///         option { "Velociraptor" }
///         option { "Deinonychus" }
///     }
///     optgroup(label: "Sauropods") {
///         option { "Diplodocus" }
///         option { "Saltasaurus" }
///         option { "Apatosaurus" }
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - The `label` attribute is mandatory when using this element
/// - Optgroup elements may not be nested
/// - Use optgroups to organize related options in a select element
///
public struct OptionGroup: WHATWG_HTML.Element.`Protocol` {
    /// If set, none of the items in this option group is selectable.
    /// Often browsers grey out such control and it won't receive any browsing events,
    /// like mouse clicks or focus-related ones.
    public var disabled: Disabled?

    /// The name of the group of options, which the browser can use when labeling
    /// the options in the user interface. This attribute is mandatory if this element is used.
    public var label: WHATWG_HTML_MediaAttributes.Label?

    /// Creates a new OptionGroup element with the specified attributes.
    ///
    /// - Parameters:
    ///   - disabled: If set, none of the items in this option group will be selectable
    ///   - label: The name of the group of options (mandatory) (typically `<option>` elements)
    public init(disabled: Disabled? = nil, label: WHATWG_HTML_MediaAttributes.Label? = nil) {
        self.disabled = disabled
        self.label = label

    }
}

extension OptionGroup {
    /// The HTML tag name
    @inlinable public static var tag: String { "optgroup" }

    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = []
    public static let content: WHATWG_HTML.Element.Content = .init(
        model: .categories([.`optgroup element inner content`])
    )
}
