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
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@dynamicMemberLookup private struct TestStringAttribute: WHATWG_HTML.StringAttribute {
    static var attribute: String { "test-attr" }

    let rawValue: String

    init(value: String) { self.rawValue = value }
}

@Suite struct `WHATWG_HTML.StringAttribute Test` {

    @Test func `Attribute name is correct`() {
        #expect(TestStringAttribute.attribute == "test-attr")
    }

    @Test func `Init with value stores rawValue correctly`() {
        let attr = TestStringAttribute(value: "container")
        #expect(attr.rawValue == "container")
    }

    @Test func `Convenience init stores value correctly`() {
        let attr = TestStringAttribute("button primary")
        #expect(attr.rawValue == "button primary")
    }

    @Test func `String literal initialization`() {
        let attr: TestStringAttribute = "navbar"
        #expect(attr.rawValue == "navbar")
    }

    @Test func `RawRepresentable init with valid value`() {
        let attr = TestStringAttribute(rawValue: "modal")
        #expect(attr?.rawValue == "modal")
    }

    @Test func `Description returns rawValue`() {
        let attr = TestStringAttribute(value: "header")
        #expect(attr.description == "header")
    }

    @Test func `Dynamic member lookup for String properties`() {
        let attr = TestStringAttribute(value: "hello world")
        #expect(attr.count == 11)
        #expect(attr.isEmpty == false)
        //        #expect(attr.uppercased() == "HELLO WORLD")
        //        #expect(attr.lowercased() == "hello world")
    }

    @Test func `Dynamic member lookup with empty string`() {
        let attr = TestStringAttribute(value: "")
        #expect(attr.isEmpty == true)
        #expect(attr.isEmpty)
    }

    @Test func `Equality comparison`() {
        let attr1 = TestStringAttribute(value: "container")
        let attr2 = TestStringAttribute(value: "container")
        let attr3 = TestStringAttribute(value: "wrapper")

        #expect(attr1 == attr2)
        #expect(attr1 != attr3)
    }

    @Test func `Empty string value`() {
        let attr = TestStringAttribute(value: "")
        #expect(attr.rawValue.isEmpty)
        #expect(attr.description.isEmpty)
    }

    @Test func `String with spaces`() {
        let attr = TestStringAttribute(value: "nav item active")
        #expect(attr.rawValue == "nav item active")
    }

    @Test func `String with special characters`() {
        let attr = TestStringAttribute(value: "btn-primary_large")
        #expect(attr.rawValue == "btn-primary_large")
    }

    @Test func `String interpolation works`() {
        let attr = TestStringAttribute(value: "item-1")
        let message = "Attribute: \(attr)"
        #expect(message == "Attribute: item-1")
    }

    @Test func `Sendable conformance (compile-time check)`() {
        let attr = TestStringAttribute(value: "test")

        Task { _ = attr }
    }

    @Test func `Unicode string support`() {
        let attr = TestStringAttribute(value: "测试-класс")
        #expect(attr.rawValue == "测试-класс")
    }

    @Test func `Long string value`() {
        let longValue = String(repeating: "test ", count: 100).trimming(.ascii.whitespaces)
        let attr = TestStringAttribute(value: longValue)
        #expect(attr.rawValue == longValue)
    }

    @Test func `Any WHATWG_HTML.StringAttribute type erasure`() {
        let attr: any WHATWG_HTML.StringAttribute = TestStringAttribute(value: "type-erased")
        #expect(attr.rawValue == "type-erased")
        #expect(attr.description == "type-erased")
    }

    @Test func `Any WHATWG_HTML.StringAttribute equality through protocol`() {
        let attr1: any WHATWG_HTML.StringAttribute = TestStringAttribute(value: "same")
        let attr2: any WHATWG_HTML.StringAttribute = TestStringAttribute(value: "same")
        let attr3: any WHATWG_HTML.StringAttribute = TestStringAttribute(value: "different")

        #expect(attr1.rawValue == attr2.rawValue)
        #expect(attr1.rawValue != attr3.rawValue)
    }
}
