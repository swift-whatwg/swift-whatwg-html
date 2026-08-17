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

public import WHATWG_HTML_GlobalAttributes
public import WHATWG_HTML_Shared

extension WHATWG.HTML.Attribute {
    public struct Form: Sendable, Hashable {
        /// A string specifying the character encodings that are to be used for the form submission.
        ///
        /// The value is a space-separated list of one or more character encodings. The server must be able to handle all the specified encodings. If this attribute is not specified, the submission uses the character encoding of the page.
        ///
        /// This attribute corresponds to the `accept-charset` attribute on the `<form>` element.
        public var acceptCharset: WHATWG.HTML.Attribute.AcceptCharset?

        /// A string indicating the URL to which to submit the data. This takes precedence over the action attribute on the `<form>` element that owns the `<input>`.
        ///
        /// This attribute is also available on `<input type="submit">` and `<button>` elements.
        public var action: WHATWG.HTML.Attribute.FormAction?

        /// A string that identifies the encoding method to use when submitting the form data to the server.
        public var enctype: WHATWG.HTML.Attribute.FormEncType?

        /// A string indicating the HTTP method to use when submitting the form's data; this value overrides any method attribute given on the owning form.
        public var method: WHATWG.HTML.Attribute.FormMethod?

        /// A Boolean attribute which, if present, specifies that the form should not be validated before submission to the server. This overrides the value of the novalidate attribute on the element's owning form.
        public var novalidate: WHATWG.HTML.Attribute.FormNovalidate?

        /// A string which specifies a name or keyword that indicates where to display the response received after submitting the form. The string must be the name of a browsing context (that is, a tab, window, or `<iframe>`. A value specified here overrides any target given by the target attribute on the `<form>` that owns this input.
        public var target: WHATWG.HTML.Attribute.FormTarget?

        /// Create a new form override configuration
        public init(
            acceptCharset: WHATWG.HTML.Attribute.AcceptCharset? = nil,
            action: WHATWG.HTML.Attribute.FormAction? = nil,
            enctype: WHATWG.HTML.Attribute.FormEncType? = nil,
            method: WHATWG.HTML.Attribute.FormMethod? = nil,
            novalidate: WHATWG.HTML.Attribute.FormNovalidate? = nil,
            target: WHATWG.HTML.Attribute.FormTarget? = nil
        ) {
            self.acceptCharset = acceptCharset
            self.action = action
            self.enctype = enctype
            self.method = method
            self.novalidate = novalidate
            self.target = target
        }
    }
}

extension WHATWG.HTML.Attribute.Form {
    public mutating func action(_ value: WHATWG.HTML.Attribute.FormAction?) { self.action = value }

    public mutating func enctype(_ value: WHATWG.HTML.Attribute.FormEncType?) {
        self.enctype = value
    }
    public mutating func method(_ value: WHATWG.HTML.Attribute.FormMethod?) { self.method = value }
    public mutating func novalidate(_ value: WHATWG.HTML.Attribute.FormNovalidate?) {
        self.novalidate = value
    }
    public mutating func target(_ value: WHATWG.HTML.Attribute.FormTarget?) { self.target = value }
}

extension WHATWG.HTML.Attribute.Form { public typealias ID = WHATWG.HTML.Attribute.Id }
