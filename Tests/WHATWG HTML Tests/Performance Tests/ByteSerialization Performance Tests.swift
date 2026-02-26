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

extension `Performance Tests` {

    @Suite("Byte Serialization Performance Tests", .serialized) struct ByteSerialization {

        // MARK: - Boolean Attributes

        @Test("Autofocus: RFC pattern", .timed(threshold: .milliseconds(1)))
        func autofocusRFCPattern() {
            let attr = Autofocus(value: true)
            let _ = [UInt8](attr)
        }

        @Test("Autofocus: UTF-8 direct", .timed(threshold: .milliseconds(1)))
        func autofocusUTF8Direct() { let _ = Array(Autofocus.attribute.utf8) }

        // MARK: - String Attributes (ASCII)

        @Test("Id ASCII: RFC pattern", .timed(threshold: .milliseconds(1))) func idASCIIRFCPattern()
        {
            let attr = Id(value: "main-content")
            let _ = [UInt8].init(attr)
        }

        @Test("Id ASCII: String interpolation", .timed(threshold: .milliseconds(1)))
        func idASCIIStringInterpolation() {
            let attr = Id(value: "main-content")
            let str = "id=\"\(attr.rawValue)\""
            let _ = Array(str.utf8)
        }

        // MARK: - String Attributes (UTF-8)

        @Test("Id UTF-8: RFC pattern", .timed(threshold: .milliseconds(1))) func idUTF8RFCPattern()
        {
            let attr = Id(value: "日本語-コンテンツ")
            let _ = [UInt8](attr)
        }

        @Test("Id UTF-8: String interpolation", .timed(threshold: .milliseconds(1)))
        func idUTF8StringInterpolation() {
            let attr = Id(value: "日本語-コンテンツ")
            let str = "id=\"\(attr.rawValue)\""
            let _ = Array(str.utf8)
        }

        // MARK: - Batched Operations

        @Test(
            "Batch RFC: 100 attributes",
            .timed(threshold: .milliseconds(5), maxAllocations: 100_000)
        ) func batchRFCPattern() {
            let attributes = (0..<100).map { Id(value: "element-\($0)") }

            var total: [UInt8] = []
            total.reserveCapacity(2000)  // ~20 bytes per attribute
            for attr in attributes {
                total.append(contentsOf: [UInt8](attr))
                total.append(UInt8.ascii.space)
            }
            let _ = total
        }

        @Test(
            "Batch String: 100 attributes",
            .timed(threshold: .milliseconds(5), maxAllocations: 100_000)
        ) func batchStringPattern() {
            let attributes = (0..<100).map { Id(value: "element-\($0)") }

            var str = ""
            str.reserveCapacity(2000)
            for attr in attributes { str += "id=\"\(attr.rawValue)\" " }
            let _ = Array(str.utf8)
        }

        // MARK: - String Composition

        @Test("Direct bytes only", .timed(threshold: .milliseconds(1))) func directBytesOnly() {
            let attr = Id(value: "test")
            let _ = [UInt8](attr)
        }

        @Test("Bytes via String composition", .timed(threshold: .milliseconds(1)))
        func bytesViaStringComposition() {
            let attr = Id(value: "test")
            let _ = String(attr)
        }

        // MARK: - Real-world HTML Generation

        @Test(
            "HTML generation RFC: 10 attributes",
            .timed(threshold: .milliseconds(1), maxAllocations: 50_000)
        ) func htmlGenerationRFC() {
            let ids = (0..<5).map { Id(value: "element-\($0)") }
            let autofocus = (0..<5).map { Autofocus(value: $0 % 2 == 0) }

            var html: [UInt8] = []
            html.reserveCapacity(500)

            for id in ids {
                html.append(contentsOf: [UInt8](id))
                html.append(UInt8.ascii.space)
            }

            for focus in autofocus {
                html.append(contentsOf: [UInt8](focus))
                html.append(UInt8.ascii.space)
            }

            let _ = String(decoding: html, as: UTF8.self)
        }

        @Test(
            "HTML generation String: 10 attributes",
            .timed(threshold: .milliseconds(1), maxAllocations: 50_000)
        ) func htmlGenerationString() {
            let ids = (0..<5).map { Id(value: "element-\($0)") }
            let autofocus = (0..<5).map { Autofocus(value: $0 % 2 == 0) }

            var html = ""
            html.reserveCapacity(500)

            for id in ids { html += "id=\"\(id.rawValue)\" " }

            for focus in autofocus { if focus.rawValue { html += "autofocus " } }

            let _ = html
        }
    }
}
