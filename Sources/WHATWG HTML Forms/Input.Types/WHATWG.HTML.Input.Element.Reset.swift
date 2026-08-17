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
public import WHATWG_HTML_Shared

/// `<input type="reset">` elements are rendered as buttons, with a default click event
/// handler that resets all inputs in the form to their initial values.
///
/// Note: You should usually avoid including reset buttons in your forms. They're rarely
/// useful, and are instead more likely to frustrate users who click them by mistake
/// (often while trying to click the submit button).
extension WHATWG.HTML.Input.Element {
    public struct Reset: Sendable, Hashable {
        /// The value attribute contains a string that is used as the button's label providing
        /// the button with an accessible description. If you don't specify a value, you get
        /// a button with the default label (typically "Reset," but this will vary depending
        /// on the user agent).
        public var value: WHATWG.HTML.Value.Attribute<String>?

        public var required: WHATWG.HTML.Required.Attribute?

        /// Creates a new reset input configuration
        public init(
            value: WHATWG.HTML.Value.Attribute<String>? = nil,
            required: WHATWG.HTML.Required.Attribute? = nil
        ) {
            self.value = value
            self.required = required
        }
    }
}

extension WHATWG.HTML.Input.Element {
    /// Creates a new reset input element
    public static let reset: Self = .reset()

    /// Creates a new reset input element
    public static func reset(
        name: WHATWG.HTML.Name.Attribute? = nil,
        value: WHATWG.HTML.Value.Attribute<String>? = nil,
        disabled: WHATWG.HTML.Disabled.Attribute? = nil,
        form: WHATWG.HTML.Form.Attribute.ID? = nil
    ) -> Self {
        .init(name: name, disabled: disabled, form: form, type: .reset(.init(value: value)))
    }
}
