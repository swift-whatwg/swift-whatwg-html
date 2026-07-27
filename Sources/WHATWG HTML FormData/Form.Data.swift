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

public import WHATWG_HTML_Forms

extension Form {
    /// Form data representation namespace
    ///
    /// This namespace contains types representing form data sets as defined
    /// in the WHATWG HTML Standard. It is extended by parser libraries
    /// (e.g., swift-url-routing) to provide parsing and printing functionality
    /// for application/x-www-form-urlencoded data.
    ///
    /// The underlying encoding/decoding uses the WHATWG URL Standard's
    /// application/x-www-form-urlencoded serialization algorithm.
    ///
    /// ## Specification
    ///
    /// [Constructing the entry list](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#constructing-the-form-data-set)
    ///
    /// ## Example
    ///
    /// ```swift
    /// var formData = Form.Data.Entry.List()
    ///
    /// // Add string entries
    /// formData.append(name: "username", value: "alice")
    /// formData.append(name: "email", value: "alice@example.com")
    ///
    /// // Add a file entry
    /// formData.append(
    ///     name: "avatar",
    ///     file: Form.Data.File(
    ///         name: "avatar.png",
    ///         type: "image/png",
    ///         body: imageData
    ///     )
    /// )
    /// ```
    public enum Data {}
}
