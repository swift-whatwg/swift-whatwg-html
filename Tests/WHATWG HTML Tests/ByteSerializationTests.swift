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

@testable import WHATWG_HTML_GlobalAttributes

@Suite("Byte Serialization Tests") struct ByteSerializationTests {

    // MARK: - Boolean Attributes

    @Test func `Autofocus byte serialization - true`() {
        let attr: Autofocus = true
        let bytes = [UInt8](attr)

        #expect(bytes == Array("autofocus".utf8))
        #expect(String(attr) == "autofocus")
    }

    @Test func `Autofocus byte serialization - false`() {
        let attr: Autofocus = false
        let bytes = [UInt8](attr)

        #expect(bytes.isEmpty)
        #expect(String(attr).isEmpty)
    }

    // MARK: - String Attributes

    @Test func `Id byte serialization - ASCII`() {
        let attr = Id(value: "main")
        let bytes = [UInt8](attr)
        let expected = Array("id=\"main\"".utf8)

        #expect(bytes == expected)
        #expect(String(attr) == "id=\"main\"")
    }

    @Test func `Id byte serialization - UTF-8`() {
        let attr = Id(value: "日本")
        let bytes = [UInt8](attr)

        // Should handle UTF-8 correctly
        let string = String(attr)
        #expect(string == "id=\"日本\"")

        // Verify round-trip through bytes
        let decoded = String(decoding: bytes, as: UTF8.self)
        #expect(decoded == "id=\"日本\"")
    }

    @Test func `Id byte serialization - complex value`() {
        let attr = Id(value: "my-complex-id_123")
        let bytes = [UInt8](attr)
        let expected = Array("id=\"my-complex-id_123\"".utf8)

        #expect(bytes == expected)
        #expect(String(attr) == "id=\"my-complex-id_123\"")
    }

    // MARK: - RFC Pattern Verification

    @Test func `String initializer composes through bytes`() {
        let attr: Autofocus = true

        // Verify category theory: Autofocus → [UInt8] → String
        let bytes = [UInt8](attr)
        let stringFromBytes = String(decoding: bytes, as: UTF8.self)
        let stringDirect = String(attr)

        #expect(stringFromBytes == stringDirect)
    }

    @Test func `Byte serialization is authoritative`() {
        let id = Id(value: "test")

        // The authoritative serialization
        let bytes = [UInt8](id)

        // String should always derive from bytes
        let stringFromInit = String(id)
        let stringFromBytes = String(decoding: bytes, as: UTF8.self)

        #expect(stringFromInit == stringFromBytes)
    }
}
