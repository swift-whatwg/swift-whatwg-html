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

/// `<input type="image">` elements are used to create graphical submit buttons, i.e. submit buttons
/// that take the form of an image rather than text.
///
/// When an image button is clicked, the form is submitted with the coordinates of the click
/// relative to the image. These coordinates are sent as two name/value pairs:
/// - name.x=X
/// - name.y=Y
///
/// Where "name" is the value of the name attribute, and X and Y are the coordinates.
extension WHATWG_HTML.Element.Input {
    public struct Image: Sendable, Hashable {

        /// A string specifying the URL of the image file to display to represent the graphical submit button. When the user interacts with the image, the input is handled like any other button input.
        public var src: WHATWG_HTML.Attribute.Src

        /// The alt attribute provides an alternate string to use as the button's label if the image cannot be shown (due to error, a user agent that cannot or is configured not to show images, or if the user is using a screen reading device). If provided, it must be a non-empty string appropriate as a label for the button.
        ///
        /// For example, if you have a graphical button that shows an image with an icon and/or image text "Login Now", you should also set the alt attribute to something like Login Now.
        ///
        /// > Note: Note: While the alt attribute is technically optional, you should always include one to maximize the usability of your content.
        ///
        /// Functionally, the alt attribute of the `<input type="image">` element works just like the alt attribute on `<img>` elements.
        public var alt: WHATWG_HTML.Attribute.Alt?

        /// A number specifying the height, in CSS pixels, at which to draw the image specified by the src attribute.
        public var height: WHATWG_HTML.Attribute.Height?

        /// A number indicating the width at which to draw the image, in CSS pixels.
        public var width: WHATWG_HTML.Attribute.Width?

        public var required: WHATWG_HTML.Attribute.Required?

        public var form: WHATWG_HTML.Attribute.Form

        public init(
            src: WHATWG_HTML.Attribute.Src,
            alt: WHATWG_HTML.Attribute.Alt? = nil,
            height: WHATWG_HTML.Attribute.Height? = nil,
            width: WHATWG_HTML.Attribute.Width? = nil,
            required: WHATWG_HTML.Attribute.Required? = nil,
            form: WHATWG_HTML.Attribute.Form = .init()
        ) {
            self.src = src
            self.alt = alt
            self.height = height
            self.width = width
            self.required = required
            self.form = form
        }
    }
}

extension WHATWG_HTML.Element.Input {

    /// Creates a new image input element (graphical submit button)
    public static func image(
        name: WHATWG_HTML.Attribute.Name? = nil,
        src: WHATWG_HTML.Attribute.Src,
        alt: WHATWG_HTML.Attribute.Alt? = nil,
        height: WHATWG_HTML.Attribute.Height? = nil,
        width: WHATWG_HTML.Attribute.Width? = nil,
        formId: WHATWG_HTML.Attribute.Form.ID? = nil,
        form: WHATWG_HTML.Attribute.Form,
        disabled: WHATWG_HTML.Attribute.Disabled? = nil,
        required: WHATWG_HTML.Attribute.Required? = nil
    ) -> Self {
        .init(
            name: name,
            disabled: disabled,
            form: formId,
            type: .image(
                .init(
                    src: src,
                    alt: alt,
                    height: height,
                    width: width,
                    required: required,
                    form: form
                )
            )
        )
    }
}
