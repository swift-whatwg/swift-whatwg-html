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
    /// The value of a form data entry.
    ///
    /// Per the WHATWG HTML specification, form data values can be either strings or files.
    /// String values are used for most form controls (text inputs, textareas, selects, etc.),
    /// while file values are used for file input controls.
    ///
    /// ## Specification
    ///
    /// The form data set consists of name-value pairs where values are either strings or files.
    ///
    /// [Form data values](https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#concept-fe-value)
    ///
    /// ## Example
    ///
    /// ```swift
    /// // String value
    /// let stringValue: WHATWG_HTML.Form.Data.Value = .string("Hello")
    ///
    /// // File value
    /// let fileValue: WHATWG_HTML.Form.Data.Value = .file(
    ///     WHATWG_HTML.Form.Data.File(
    ///         name: "document.pdf",
    ///         type: "application/pdf",
    ///         body: pdfData
    ///     )
    /// )
    /// ```
    public enum Value: Sendable, Hashable {
        /// A string value.
        ///
        /// Used for text inputs, textareas, select elements, and other text-based form controls.
        case string(String)

        /// A file value.
        ///
        /// Used for file input controls (`<input type="file">`). Contains the file's name,
        /// MIME type, and binary body.
        case file(File)
    }
}

extension Form.Data.Value {
    /// Returns the value as a string if it is a string value.
    @inlinable public var stringValue: String? {
        guard case .string(let value) = self else { return nil }
        return value
    }

    /// Returns the value as a file if it is a file value.
    @inlinable public var fileValue: Form.Data.File? {
        guard case .file(let file) = self else { return nil }
        return file
    }

    /// Returns whether this is a string value.
    @inlinable public var isString: Bool {
        if case .string = self { return true }
        return false
    }

    /// Returns whether this is a file value.
    @inlinable public var isFile: Bool {
        if case .file = self { return true }
        return false
    }
}

// MARK: - ExpressibleByStringLiteral

extension Form.Data.Value: ExpressibleByStringLiteral {
    @inlinable public init(stringLiteral value: String) { self = .string(value) }
}

// MARK: - CustomStringConvertible

extension Form.Data.Value: CustomStringConvertible {
    public var description: String {
        switch self {
        case .string(let value): return value
        case .file(let file):
            return "<File: \(file.name), type: \(file.type), size: \(file.body.count) bytes>"
        }
    }
}
