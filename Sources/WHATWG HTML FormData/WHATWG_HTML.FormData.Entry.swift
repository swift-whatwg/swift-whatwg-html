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
import WHATWG_HTML_Shared

extension Form.Data {
    /// Represents a single entry in a form data set.
    ///
    /// Each entry consists of a name and an associated value. An entry list can contain multiple
    /// entries with the same name, which is used to represent multi-valued form controls like
    /// checkboxes or multi-select elements.
    ///
    /// ## Specification
    ///
    /// As defined in the WHATWG HTML Living Standard, form data entries are the fundamental
    /// building blocks of form submission data.
    ///
    /// [Form data set](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#the-form-data-set)
    ///
    /// ## Example
    ///
    /// ```swift
    /// // String entry
    /// let nameEntry = WHATWG_HTML.Form.Data.Entry(
    ///     name: "username",
    ///     value: .string("alice")
    /// )
    ///
    /// // File entry
    /// let fileEntry = WHATWG_HTML.Form.Data.Entry(
    ///     name: "avatar",
    ///     value: .file(WHATWG_HTML.Form.Data.File(
    ///         name: "avatar.png",
    ///         type: "image/png",
    ///         body: imageData
    ///     ))
    /// )
    /// ```
    public struct Entry: Sendable, Hashable {
        /// The name of this entry.
        ///
        /// This corresponds to the `name` attribute of the form control that produced this entry.
        public let name: String

        /// The value of this entry.
        ///
        /// Can be either a string value or a file value, depending on the type of form control.
        public let value: Value

        /// Creates a form data entry with the specified name and value.
        ///
        /// - Parameters:
        ///   - name: The name of the entry
        ///   - value: The value of the entry (string or file)
        @inlinable public init(name: String, value: Value) {
            self.name = name
            self.value = value
        }

        /// Creates a form data entry with a string value.
        ///
        /// - Parameters:
        ///   - name: The name of the entry
        ///   - stringValue: The string value
        @inlinable public init(name: String, stringValue: String) {
            self.name = name
            self.value = .string(stringValue)
        }

        /// Creates a form data entry with a file value.
        ///
        /// - Parameters:
        ///   - name: The name of the entry
        ///   - file: The file value
        @inlinable public init(name: String, file: File) {
            self.name = name
            self.value = .file(file)
        }
    }
}
