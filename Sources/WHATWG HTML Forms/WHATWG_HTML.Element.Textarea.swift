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
        public var autocapitalize: WHATWG_HTML.Attribute.Autocapitalize?

        /// Controls whether entered text can be automatically completed by the browser
        public var autocomplete: WHATWG_HTML.Attribute.Autocomplete?

        /// Controls automatic spelling correction while editing
        public var autocorrect: WHATWG_HTML.Attribute.Autocorrect?

        /// Automatically focus the control when page loads
        public var autofocus: WHATWG_HTML.Attribute.Autofocus?

        /// The visible width of the text control, in average character widths
        public var cols: WHATWG_HTML.Attribute.Cols?

        /// Indicates the text directionality of the element contents
        public var dirname: WHATWG_HTML.Attribute.Dirname?

        /// Whether the control is disabled
        public var disabled: WHATWG_HTML.Attribute.Disabled?

        /// Associates the control with a form element
        public var form: WHATWG_HTML.Attribute.Form.ID?

        /// Maximum number of characters allowed
        public var maxlength: WHATWG_HTML.Attribute.Maxlength?

        /// Minimum number of characters required
        public var minlength: WHATWG_HTML.Attribute.Minlength?

        /// Name of the control
        public var name: WHATWG_HTML.Attribute.Name?

        /// Hint to the user of what can be entered
        public var placeholder: WHATWG_HTML.Attribute.Placeholder?

        /// Whether the control is read-only
        public var readonly: WHATWG_HTML.Attribute.Readonly?

        /// Whether the control is required
        public var required: WHATWG_HTML.Attribute.Required?

        /// The number of visible text lines
        public var rows: WHATWG_HTML.Attribute.Rows?

        /// Whether the textarea is subject to spell-checking
        public var spellcheck: WHATWG_HTML.Attribute.Spellcheck?

        /// Indicates how the control wraps text for form submission
        public var wrap: WHATWG_HTML.Attribute.TextareaWrap?

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
            autocapitalize: WHATWG_HTML.Attribute.Autocapitalize? = nil,
            autocomplete: WHATWG_HTML.Attribute.Autocomplete? = nil,
            autocorrect: WHATWG_HTML.Attribute.Autocorrect? = nil,
            autofocus: WHATWG_HTML.Attribute.Autofocus? = nil,
            cols: WHATWG_HTML.Attribute.Cols? = nil,
            dirname: WHATWG_HTML.Attribute.Dirname? = nil,
            disabled: WHATWG_HTML.Attribute.Disabled? = nil,
            form: WHATWG_HTML.Attribute.Form.ID? = nil,
            maxlength: WHATWG_HTML.Attribute.Maxlength? = nil,
            minlength: WHATWG_HTML.Attribute.Minlength? = nil,
            name: WHATWG_HTML.Attribute.Name? = nil,
            placeholder: WHATWG_HTML.Attribute.Placeholder? = nil,
            readonly: WHATWG_HTML.Attribute.Readonly? = nil,
            required: WHATWG_HTML.Attribute.Required? = nil,
            rows: WHATWG_HTML.Attribute.Rows? = nil,
            spellcheck: WHATWG_HTML.Attribute.Spellcheck? = nil,
            wrap: WHATWG_HTML.Attribute.TextareaWrap? = nil
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
