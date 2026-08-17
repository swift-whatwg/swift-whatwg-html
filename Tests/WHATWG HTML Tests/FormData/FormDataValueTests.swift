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

@Suite struct `FormData Value Tests` {

    @Test func `Value string case stores value`() {
        let value = WHATWG.HTML.Attribute.Form.Data.Value.string("hello")

        #expect(value.stringValue == "hello")
        #expect(value.fileValue == nil)
        #expect(value.isString == true)
        #expect(value.isFile == false)
    }

    @Test func `Value file case stores file`() {
        let file = WHATWG.HTML.Attribute.Form.Data.File(
            name: "test.txt",
            type: "text/plain",
            body: [UInt8]([1, 2, 3])
        )
        let value = WHATWG.HTML.Attribute.Form.Data.Value.file(file)

        #expect(value.stringValue == nil)
        #expect(value.fileValue == file)
        #expect(value.isString == false)
        #expect(value.isFile == true)
    }

    @Test func `Value ExpressibleByStringLiteral creates string value`() {
        let value: WHATWG.HTML.Attribute.Form.Data.Value = "test string"

        #expect(value.stringValue == "test string")
        #expect(value.isString == true)
    }

    @Test func `Value description for string returns the string`() {
        let value = WHATWG.HTML.Attribute.Form.Data.Value.string("hello world")
        #expect(value.description == "hello world")
    }

    @Test func `Value description for file includes file info`() {
        let file = WHATWG.HTML.Attribute.Form.Data.File(
            name: "image.png",
            type: "image/png",
            body: [UInt8]([1, 2, 3])
        )
        let value = WHATWG.HTML.Attribute.Form.Data.Value.file(file)

        let description = value.description
        #expect(description.contains("image.png"))
        #expect(description.contains("image/png"))
        #expect(description.contains("3"))
    }

    @Test func `Value conforms to Hashable`() {
        let value1 = WHATWG.HTML.Attribute.Form.Data.Value.string("test")
        let value2 = WHATWG.HTML.Attribute.Form.Data.Value.string("test")

        #expect(value1 == value2)
        #expect(value1.hashValue == value2.hashValue)
    }

    @Test func `Different string values are not equal`() {
        let value1 = WHATWG.HTML.Attribute.Form.Data.Value.string("hello")
        let value2 = WHATWG.HTML.Attribute.Form.Data.Value.string("world")

        #expect(value1 != value2)
    }

    @Test func `String and file values are not equal`() {
        let stringValue = WHATWG.HTML.Attribute.Form.Data.Value.string("test")
        let fileValue = WHATWG.HTML.Attribute.Form.Data.Value.file(
            WHATWG.HTML.Attribute.Form.Data.File(
                name: "test.txt",
                type: "text/plain",
                body: [UInt8]()
            )
        )

        #expect(stringValue != fileValue)
    }

    @Test func `Value conforms to Sendable`() {
        // Compile-time check that Value is Sendable
        func acceptSendable<T: Sendable>(_: T) {}
        let value = WHATWG.HTML.Attribute.Form.Data.Value.string("test")
        acceptSendable(value)
    }
}
