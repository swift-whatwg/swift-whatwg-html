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

extension Form.Data.Entry {
    /// A collection of form data entries representing a "form data set".
    ///
    /// An entry list is an ordered collection of name-value pairs that represents the data
    /// from a form submission. The same name can appear multiple times, which is used to
    /// represent multi-valued controls like checkboxes or multi-select elements.
    ///
    /// ## Specification
    ///
    /// The entry list is defined in the WHATWG HTML Living Standard as the fundamental
    /// representation of form submission data.
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
    /// // Add multiple values for the same name
    /// formData.append(name: "interests", value: "swift")
    /// formData.append(name: "interests", value: "webdev")
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
    ///
    /// // Access entries
    /// let username = formData["username"]?.first?.stringValue  // "alice"
    /// let interests = formData["interests"]  // [.string("swift"), .string("webdev")]
    /// ```
    public struct List: Sendable {
        /// The ordered list of entries.
        ///
        /// Order is preserved as entries are added, which is important for form submission.
        @usableFromInline internal private(set) var entries: [Form.Data.Entry]

        /// Creates an empty entry list.
        @inlinable public init() { self.entries = [] }

        /// Creates an entry list with the specified entries.
        ///
        /// - Parameter entries: The initial entries
        @inlinable public init(entries: [Form.Data.Entry]) { self.entries = entries }
    }
}

extension Form.Data.Entry.List {
    /// Appends an entry to the list.
    ///
    /// - Parameter entry: The entry to append
    @inlinable public mutating func append(_ entry: Form.Data.Entry) { entries.append(entry) }

    /// Appends an entry with the specified name and value.
    ///
    /// - Parameters:
    ///   - name: The entry name
    ///   - value: The entry value
    @inlinable public mutating func append(name: String, value: Form.Data.Value) {
        append(Form.Data.Entry(name: name, value: value))
    }

    /// Appends a string entry with the specified name and value.
    ///
    /// - Parameters:
    ///   - name: The entry name
    ///   - value: The string value
    @inlinable public mutating func append(name: String, value: String) {
        append(Form.Data.Entry(name: name, value: .string(value)))
    }

    /// Appends a file entry with the specified name and file.
    ///
    /// - Parameters:
    ///   - name: The entry name
    ///   - file: The file value
    @inlinable public mutating func append(name: String, file: Form.Data.File) {
        append(Form.Data.Entry(name: name, value: .file(file)))
    }

    /// Returns all values for the specified name.
    ///
    /// - Parameter name: The entry name to look up
    /// - Returns: An array of values, or `nil` if no entries exist with that name
    @inlinable public subscript(name: String) -> [Form.Data.Value]? {
        let values = entries.filter { $0.name == name }.map(\.value)
        return values.isEmpty ? nil : values
    }

    /// Returns the first value for the specified name.
    ///
    /// This is useful when you expect only a single value for a given name.
    ///
    /// - Parameter name: The entry name to look up
    /// - Returns: The first value, or `nil` if no entries exist with that name
    @inlinable public func first(named name: String) -> Form.Data.Value? {
        entries.first { $0.name == name }?.value
    }

    /// Returns all values for the specified name.
    ///
    /// - Parameter name: The entry name to look up
    /// - Returns: An array of all values for that name (empty if none exist)
    @inlinable public func all(named name: String) -> [Form.Data.Value] {
        entries.filter { $0.name == name }.map(\.value)
    }

    /// Returns whether the entry list contains any entries with the specified name.
    ///
    /// - Parameter name: The entry name to check
    /// - Returns: `true` if at least one entry exists with that name
    @inlinable public func contains(name: String) -> Bool {
        entries.contains { $0.name == name }
    }

    /// Removes all entries with the specified name.
    ///
    /// - Parameter name: The entry name to remove
    /// - Returns: The number of entries removed
    @inlinable @discardableResult public mutating func remove(name: String) -> Int {
        let initialCount = entries.count
        entries.removeAll { $0.name == name }
        return initialCount - entries.count
    }

    /// Returns the number of entries in the list.
    @inlinable public var count: Int { entries.count }

    /// Returns whether the entry list is empty.
    @inlinable public var isEmpty: Bool { entries.isEmpty }

    /// Returns all unique entry names in the list, preserving order of first appearance.
    @inlinable public var names: [String] {
        var seen = Set<String>()
        var result: [String] = []
        for entry in entries where seen.insert(entry.name).inserted {
            result.append(entry.name)
        }
        return result
    }
}

// MARK: - Collection Conformance

extension Form.Data.Entry.List: Collection {
    public typealias Index = Array<Form.Data.Entry>.Index
    public typealias Element = Form.Data.Entry

    @inlinable public var startIndex: Index { entries.startIndex }

    @inlinable public var endIndex: Index { entries.endIndex }

    @inlinable public subscript(position: Index) -> Form.Data.Entry { entries[position] }

    @inlinable public func index(after i: Index) -> Index { entries.index(after: i) }
}

// MARK: - Sequence Protocol

extension Form.Data.Entry.List: Swift.Sequence {
    @inlinable public func makeIterator() -> Array<Form.Data.Entry>.Iterator {
        entries.makeIterator()
    }
}

// MARK: - ExpressibleByArrayLiteral

extension Form.Data.Entry.List: ExpressibleByArrayLiteral {
    @inlinable public init(arrayLiteral elements: Form.Data.Entry...) { self.entries = elements }
}

// MARK: - Equatable & Hashable

extension Form.Data.Entry.List: Equatable {
    @inlinable public static func == (lhs: Self, rhs: Self) -> Bool { lhs.entries == rhs.entries }
}

extension Form.Data.Entry.List: Hashable {
    @inlinable public func hash(into hasher: inout Hasher) { hasher.combine(entries) }
}

// MARK: - CustomStringConvertible

extension Form.Data.Entry.List: CustomStringConvertible {
    public var description: String {
        let entryDescriptions = entries.map { entry in "\(entry.name): \(entry.value)" }
        return "EntryList(\(entryDescriptions.joined(separator: ", ")))"
    }
}

// MARK: - CustomDebugStringConvertible

extension Form.Data.Entry.List: CustomDebugStringConvertible {
    public var debugDescription: String {
        """
        Form.Data.Entry.List(count: \(count)) {
        \(entries.map { "  \($0.name): \($0.value)" }.joined(separator: "\n"))
        }
        """
    }
}
