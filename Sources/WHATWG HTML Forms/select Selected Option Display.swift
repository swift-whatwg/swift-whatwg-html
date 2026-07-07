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
public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

/// Represents an HTML `<select>` element, which creates a dropdown list of options.
///
/// The `Select` element provides a way to create a form control that allows users to choose
/// one or multiple options from a dropdown list.
///
/// ## Example
///
/// ```swift
/// select {
///     option("value1") {
///         "Option 1"
///     }
///     option("value2") {
///         "Option 2"
///     }
/// }
/// ```
///
/// ## Best Practices
///
/// - Always provide a descriptive label using the `<label>` element
/// - Use the `multiple` attribute when allowing multiple selections
/// - Include a default selected option when appropriate
/// - Keep the dropdown list reasonably sized for usability
/// - Consider using `<optgroup>` to organize long lists of options
///
public struct Select: WHATWG_HTML.Element.`Protocol` {
    /// The HTML tag name
    @inlinable public static var tag: String { "select" }

    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .interactive, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(
        model: .categories([.`select element inner content`])
    )

    /// Specifies that multiple options can be selected
    public var multiple: Multiple?

    /// Specifies the name of the control
    public var name: Name?

    /// Specifies that the control is required
    public var required: Required?

    /// Specifies the number of visible options
    public var size: Size?

    /// Specifies that the select should be disabled
    public var disabled: Disabled?

    /// Specifies a form to which the select belongs
    public var form: WHATWG_HTML_FormAttributes.Form.ID?

    /// Automatically focuses the select when the page loads
    public var autofocus: Autofocus?

    /// Creates a new Select element with the specified attributes.
    ///
    /// - Parameters:
    ///   - multiple: Whether multiple options can be selected
    ///   - name: The name of the control
    ///   - required: Whether the control is required
    ///   - size: The number of visible options
    ///   - disabled: Whether the select should be disabled
    ///   - form: A form to which the select belongs
    ///   - autofocus: Whether the select should be focused when the page loads (typically option elements)
    public init(
        multiple: Multiple? = nil,
        name: Name? = nil,
        required: Required? = nil,
        size: Size? = nil,
        disabled: Disabled? = nil,
        form: WHATWG_HTML_FormAttributes.Form.ID? = nil,
        autofocus: Autofocus? = nil
    ) {
        self.multiple = multiple
        self.name = name
        self.required = required
        self.size = size
        self.disabled = disabled
        self.form = form
        self.autofocus = autofocus
    }
}
