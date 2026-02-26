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

import Testing
import WHATWG_HTML_Forms

@testable import WHATWG_HTML_FormData

@Suite struct `EntryList Tests` {

    @Test func `EntryList empty initialization`() {
        let list = Form.Data.Entry.List()

        #expect(list.isEmpty)
        #expect(list.isEmpty == true)
    }

    @Test func `EntryList initialization with entries`() {
        let entries = [
            Form.Data.Entry(name: "field1", stringValue: "value1"),
            Form.Data.Entry(name: "field2", stringValue: "value2"),
        ]
        let list = Form.Data.Entry.List(entries: entries)

        #expect(list.count == 2)
        #expect(list.isEmpty == false)
    }

    @Test func `EntryList append entry`() {
        var list = Form.Data.Entry.List()
        let entry = Form.Data.Entry(name: "test", stringValue: "value")

        list.append(entry)

        #expect(list.count == 1)
        #expect(list[0].name == "test")
    }

    @Test func `EntryList append with name and value`() {
        var list = Form.Data.Entry.List()
        list.append(name: "username", value: .string("alice"))

        #expect(list.count == 1)
        #expect(list[0].name == "username")
        #expect(list[0].value.stringValue == "alice")
    }

    @Test func `EntryList append string convenience`() {
        var list = Form.Data.Entry.List()
        list.append(name: "email", value: "alice@example.com")

        #expect(list.count == 1)
        #expect(list[0].value.stringValue == "alice@example.com")
    }

    @Test func `EntryList append file convenience`() {
        var list = Form.Data.Entry.List()
        let file = Form.Data.File(name: "photo.jpg", type: "image/jpeg", body: [UInt8]([1, 2, 3]))
        list.append(name: "photo", file: file)

        #expect(list.count == 1)
        #expect(list[0].value.fileValue == file)
    }

    @Test func `EntryList subscript by name returns all values`() {
        var list = Form.Data.Entry.List()
        list.append(name: "interests", value: "swift")
        list.append(name: "interests", value: "webdev")
        list.append(name: "username", value: "alice")

        let interests = list["interests"]
        let username = list["username"]

        #expect(interests?.count == 2)
        #expect(interests?[0].stringValue == "swift")
        #expect(interests?[1].stringValue == "webdev")
        #expect(username?.count == 1)
        #expect(username?[0].stringValue == "alice")
    }

    @Test func `EntryList subscript returns nil for missing name`() {
        let list = Form.Data.Entry.List()
        #expect(list["nonexistent"] == nil)
    }

    @Test func `EntryList first named returns first value`() {
        var list = Form.Data.Entry.List()
        list.append(name: "field", value: "first")
        list.append(name: "field", value: "second")

        let first = list.first(named: "field")

        #expect(first?.stringValue == "first")
    }

    @Test func `EntryList first named returns nil for missing`() {
        let list = Form.Data.Entry.List()
        #expect(list.first(named: "missing") == nil)
    }

    @Test func `EntryList all named returns all values`() {
        var list = Form.Data.Entry.List()
        list.append(name: "tags", value: "swift")
        list.append(name: "tags", value: "web")
        list.append(name: "tags", value: "server")

        let tags = list.all(named: "tags")

        #expect(tags.count == 3)
        #expect(tags[0].stringValue == "swift")
        #expect(tags[1].stringValue == "web")
        #expect(tags[2].stringValue == "server")
    }

    @Test func `EntryList all named returns empty array for missing`() {
        let list = Form.Data.Entry.List()
        let values = list.all(named: "missing")

        #expect(values.isEmpty == true)
    }

    @Test func `EntryList contains name`() {
        var list = Form.Data.Entry.List()
        list.append(name: "username", value: "alice")

        #expect(list.contains(name: "username") == true)
        #expect(list.contains(name: "email") == false)
    }

    @Test func `EntryList remove by name`() {
        var list = Form.Data.Entry.List()
        list.append(name: "field1", value: "value1")
        list.append(name: "field2", value: "value2")
        list.append(name: "field1", value: "value3")

        let removed = list.remove(name: "field1")

        #expect(removed == 2)
        #expect(list.count == 1)
        #expect(list[0].name == "field2")
    }

    @Test func `EntryList names returns unique names in order`() {
        var list = Form.Data.Entry.List()
        list.append(name: "username", value: "alice")
        list.append(name: "email", value: "alice@example.com")
        list.append(name: "username", value: "bob")
        list.append(name: "age", value: "30")
        list.append(name: "email", value: "bob@example.com")

        let names = list.names

        #expect(names.count == 3)
        #expect(names == ["username", "email", "age"])
    }

    @Test func `EntryList conforms to Collection`() {
        var list = Form.Data.Entry.List()
        list.append(name: "field1", value: "value1")
        list.append(name: "field2", value: "value2")

        let first = list[list.startIndex]
        let second = list[list.index(after: list.startIndex)]

        #expect(first.name == "field1")
        #expect(second.name == "field2")
    }

    @Test func `EntryList can be iterated`() {
        var list = Form.Data.Entry.List()
        list.append(name: "a", value: "1")
        list.append(name: "b", value: "2")
        list.append(name: "c", value: "3")

        var names: [String] = []
        for entry in list { names.append(entry.name) }

        #expect(names == ["a", "b", "c"])
    }

    @Test func `EntryList array literal initialization`() {
        let list: Form.Data.Entry.List = [
            Form.Data.Entry(name: "field1", stringValue: "value1"),
            Form.Data.Entry(name: "field2", stringValue: "value2"),
        ]

        #expect(list.count == 2)
        #expect(list[0].name == "field1")
        #expect(list[1].name == "field2")
    }

    @Test func `EntryList conforms to Equatable`() {
        let list1: Form.Data.Entry.List = [
            Form.Data.Entry(name: "a", stringValue: "1"),
            Form.Data.Entry(name: "b", stringValue: "2"),
        ]
        let list2: Form.Data.Entry.List = [
            Form.Data.Entry(name: "a", stringValue: "1"),
            Form.Data.Entry(name: "b", stringValue: "2"),
        ]

        #expect(list1 == list2)
    }

    @Test func `EntryList different entries not equal`() {
        let list1: Form.Data.Entry.List = [Form.Data.Entry(name: "a", stringValue: "1")]
        let list2: Form.Data.Entry.List = [Form.Data.Entry(name: "b", stringValue: "2")]

        #expect(list1 != list2)
    }

    @Test func `EntryList conforms to Hashable`() {
        let list1: Form.Data.Entry.List = [Form.Data.Entry(name: "a", stringValue: "1")]
        let list2: Form.Data.Entry.List = [Form.Data.Entry(name: "a", stringValue: "1")]

        #expect(list1.hashValue == list2.hashValue)
    }

    @Test func `EntryList description`() {
        var list = Form.Data.Entry.List()
        list.append(name: "username", value: "alice")
        list.append(name: "email", value: "alice@example.com")

        let description = list.description

        #expect(description.contains("username"))
        #expect(description.contains("alice"))
        #expect(description.contains("email"))
        #expect(description.contains("alice@example.com"))
    }

    @Test func `EntryList debug description`() {
        var list = Form.Data.Entry.List()
        list.append(name: "test", value: "value")

        let debugDescription = list.debugDescription

        #expect(debugDescription.contains("Entry.List"))
        #expect(debugDescription.contains("count: 1"))
        #expect(debugDescription.contains("test"))
    }

    @Test func `EntryList preserves insertion order`() {
        var list = Form.Data.Entry.List()
        list.append(name: "third", value: "3")
        list.append(name: "first", value: "1")
        list.append(name: "second", value: "2")

        #expect(list[0].name == "third")
        #expect(list[1].name == "first")
        #expect(list[2].name == "second")
    }

    @Test func `EntryList supports multiple values for same name`() {
        var list = Form.Data.Entry.List()
        list.append(name: "checkbox", value: "option1")
        list.append(name: "checkbox", value: "option2")
        list.append(name: "checkbox", value: "option3")

        let values = list.all(named: "checkbox")

        #expect(values.count == 3)
        #expect(values[0].stringValue == "option1")
        #expect(values[1].stringValue == "option2")
        #expect(values[2].stringValue == "option3")
    }

    @Test func `EntryList conforms to Sendable`() {
        // Compile-time check that EntryList is Sendable
        func acceptSendable<T: Sendable>(_: T) {}
        let list = Form.Data.Entry.List()
        acceptSendable(list)
    }
}
