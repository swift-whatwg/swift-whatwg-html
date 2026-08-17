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
public import WHATWG_HTML_TableAttributes

extension WHATWG_HTML.Element {
    /// Represents an HTML textarea element (`<textarea>`), which is a multi-line plain-text editing control.
    ///
    /// The `Textarea` struct provides a type-safe way to create HTML textarea elements, useful when
    /// you want to allow users to enter sizeable amounts of free-form text, such as comments or feedback.
    ///
    /// ## Example
    ///
    /// ```swift
    /// form {
    ///     label(for: "story") { "Tell us your story:" }
    ///     textarea(id: "story", name: "story", rows: 5, cols: 33) {
    ///         "It was a dark and stormy night..."
    ///     }
    /// }
    /// ```
    ///
    /// ## Best Practices
    ///
    /// - Always associate a `<textarea>` with a `<label>` using the `for` attribute for accessibility
    /// - Specify `rows` and `cols` attributes for consistent sizing across browsers
    /// - Consider using `maxlength` and `minlength` to control the amount of text users can enter
    /// - Use `placeholder` as a hint, but not as a replacement for a proper label
    /// - Use CSS for styling rather than relying on HTML attributes
    /// - Consider disabling textarea resizing with CSS `resize: none` if needed
    ///
    public struct Textarea: WHATWG_HTML.Element.`Protocol` {
        /// Controls whether inputted text is automatically capitalized
        public var autocapitalize: Attribute.Autocapitalize?

        /// Controls whether entered text can be automatically completed by the browser
        public var autocomplete: Attribute.Autocomplete?

        /// Controls automatic spelling correction while editing
        public var autocorrect: Attribute.Autocorrect?

        /// Automatically focus the control when page loads
        public var autofocus: Attribute.Autofocus?

        /// The visible width of the text control, in average character widths
        public var cols: Attribute.Cols?

        /// Indicates the text directionality of the element contents
        public var dirname: Attribute.Dirname?

        /// Whether the control is disabled
        public var disabled: Attribute.Disabled?

        /// Associates the control with a form element
        public var form: WHATWG_HTML.Attribute.Form.ID?

        /// Maximum number of characters allowed
        public var maxlength: Attribute.Maxlength?

        /// Minimum number of characters required
        public var minlength: Attribute.Minlength?

        /// Name of the control
        public var name: Attribute.Name?

        /// Hint to the user of what can be entered
        public var placeholder: Attribute.Placeholder?

        /// Whether the control is read-only
        public var readonly: Attribute.Readonly?

        /// Whether the control is required
        public var required: Attribute.Required?

        /// The number of visible text lines
        public var rows: Attribute.Rows?

        /// Whether the textarea is subject to spell-checking
        public var spellcheck: Attribute.Spellcheck?

        /// Indicates how the control wraps text for form submission
        public var wrap: Attribute.TextareaWrap?

        /// Creates a new Textarea element with the specified attributes.
        ///
        /// - Parameters:
        ///   - autocapitalize: Controls how text input is automatically capitalized
        ///   - autocomplete: Controls browser's autocomplete feature
        ///   - autocorrect: Controls automatic spelling correction
        ///   - autofocus: Whether control should automatically get focus
        ///   - cols: Width of the control in character widths
        ///   - dirname: For text directionality
        ///   - disabled: Whether the control is disabled
        ///   - form: ID of the form this element belongs to
        ///   - maxlength: Maximum allowed character count
        ///   - minlength: Minimum required character count
        ///   - name: Name of the control for form submission
        ///   - placeholder: Text hint shown when field is empty
        ///   - readonly: Whether field is read-only
        ///   - required: Whether field is required
        ///   - rows: Height of control in number of text lines
        ///   - spellcheck: Whether spelling should be checked
        ///   - wrap: How text should wrap for form submission
        public init(
            autocapitalize: Attribute.Autocapitalize? = nil,
            autocomplete: Attribute.Autocomplete? = nil,
            autocorrect: Attribute.Autocorrect? = nil,
            autofocus: Attribute.Autofocus? = nil,
            cols: Attribute.Cols? = nil,
            dirname: Attribute.Dirname? = nil,
            disabled: Attribute.Disabled? = nil,
            form: WHATWG_HTML.Attribute.Form.ID? = nil,
            maxlength: Attribute.Maxlength? = nil,
            minlength: Attribute.Minlength? = nil,
            name: Attribute.Name? = nil,
            placeholder: Attribute.Placeholder? = nil,
            readonly: Attribute.Readonly? = nil,
            required: Attribute.Required? = nil,
            rows: Attribute.Rows? = nil,
            spellcheck: Attribute.Spellcheck? = nil,
            wrap: Attribute.TextareaWrap? = nil
        ) {
            self.autocapitalize = autocapitalize
            self.autocomplete = autocomplete
            self.autocorrect = autocorrect
            self.autofocus = autofocus
            self.cols = cols
            self.dirname = dirname
            self.disabled = disabled
            self.form = form
            self.maxlength = maxlength
            self.minlength = minlength
            self.name = name
            self.placeholder = placeholder
            self.readonly = readonly
            self.required = required
            self.rows = rows
            self.spellcheck = spellcheck
            self.wrap = wrap

        }
    }
}

extension WHATWG_HTML.Element.Textarea {
    /// The HTML tag name
    @inlinable public static var tag: String { "textarea" }

    public static let categories: Set<WHATWG_HTML.Element.Content.Category> = [
        .flow, .phrasing, .interactive, .palpable,
    ]
    public static let content: WHATWG_HTML.Element.Content = .init(model: .text)
}
