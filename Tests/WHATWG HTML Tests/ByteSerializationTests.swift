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

    @Test("Autofocus byte serialization - true") func autofocusTrue() {
        let attr: Autofocus = true
        let bytes = [UInt8](attr)

        #expect(bytes == [UInt8].ascii.unchecked("autofocus"))
        #expect(String(attr) == "autofocus")
    }

    @Test("Autofocus byte serialization - false") func autofocusFalse() {
        let attr: Autofocus = false
        let bytes = [UInt8](attr)

        #expect(bytes.isEmpty)
        #expect(String(attr).isEmpty)
    }

    // MARK: - String Attributes

    @Test("Id byte serialization - ASCII") func idASCII() {
        let attr = Id(value: "main")
        let bytes = [UInt8](attr)
        let expected = [UInt8].ascii.unchecked("id=\"main\"")

        #expect(bytes == expected)
        #expect(String(attr) == "id=\"main\"")
    }

    @Test("Id byte serialization - UTF-8") func idUTF8() {
        let attr = Id(value: "日本")
        let bytes = [UInt8](attr)

        // Should handle UTF-8 correctly
        let string = String(attr)
        #expect(string == "id=\"日本\"")

        // Verify round-trip through bytes
        let decoded = String(decoding: bytes, as: UTF8.self)
        #expect(decoded == "id=\"日本\"")
    }

    @Test("Id byte serialization - complex value") func idComplex() {
        let attr = Id(value: "my-complex-id_123")
        let bytes = [UInt8](attr)
        let expected = [UInt8].ascii.unchecked("id=\"my-complex-id_123\"")

        #expect(bytes == expected)
        #expect(String(attr) == "id=\"my-complex-id_123\"")
    }

    // MARK: - RFC Pattern Verification

    @Test("String initializer composes through bytes") func stringCompositionThroughBytes() {
        let attr: Autofocus = true

        // Verify category theory: Autofocus → [UInt8] → String
        let bytes = [UInt8](attr)
        let stringFromBytes = String(decoding: bytes, as: UTF8.self)
        let stringDirect = String(attr)

        #expect(stringFromBytes == stringDirect)
    }

    @Test("Byte serialization is authoritative") func byteSerializationAuthoritative() {
        let id = Id(value: "test")

        // The authoritative serialization
        let bytes = [UInt8](id)

        // String should always derive from bytes
        let stringFromInit = String(id)
        let stringFromBytes = String(decoding: bytes, as: UTF8.self)

        #expect(stringFromInit == stringFromBytes)
    }
}
