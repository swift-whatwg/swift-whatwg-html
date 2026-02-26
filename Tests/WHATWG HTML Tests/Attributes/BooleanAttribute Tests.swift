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

@dynamicMemberLookup private struct TestBooleanAttribute: WHATWG_HTML.BooleanAttribute {
    static var attribute: String { "test-bool-attr" }

    var rawValue: Bool

    init(value: Bool) { self.rawValue = value }
}

@Suite struct `WHATWG_HTML.BooleanAttribute Test` {

    @Test func `Attribute name is correct`() {
        #expect(TestBooleanAttribute.attribute == "test-bool-attr")
    }

    @Test func `Init with true value stores rawValue correctly`() {
        let attr = TestBooleanAttribute(value: true)
        #expect(attr.rawValue == true)
    }

    @Test func `Init with false value stores rawValue correctly`() {
        let attr = TestBooleanAttribute(value: false)
        #expect(attr.rawValue == false)
    }

    @Test func `Boolean literal initialization with true`() {
        let attr: TestBooleanAttribute = true
        #expect(attr.rawValue == true)
    }

    @Test func `Boolean literal initialization with false`() {
        let attr: TestBooleanAttribute = false
        #expect(attr.rawValue == false)
    }

    @Test func `RawRepresentable init with true value`() {
        let attr = TestBooleanAttribute(rawValue: true)
        #expect(attr?.rawValue == true)
    }

    @Test func `RawRepresentable init with false value`() {
        let attr = TestBooleanAttribute(rawValue: false)
        #expect(attr?.rawValue == false)
    }

    @Test func `Description returns correct string for true`() {
        let attr = TestBooleanAttribute(value: true)
        #expect(attr.description == "true")
    }

    @Test func `Description returns correct string for false`() {
        let attr = TestBooleanAttribute(value: false)
        #expect(attr.description == "false")
    }

    @Test func `Dynamic member lookup for Bool properties`() {
        let trueAttr = TestBooleanAttribute(value: true)
        let falseAttr = TestBooleanAttribute(value: false)

        #expect(trueAttr.hashValue == true.hashValue)
        #expect(falseAttr.hashValue == false.hashValue)
    }

    @Test func `CaseIterable conformance`() {
        let allCases = TestBooleanAttribute.allCases
        #expect(allCases.count == 2)
        #expect(allCases.contains { $0.rawValue == true })
        #expect(allCases.contains { $0.rawValue == false })
    }

    @Test func `CaseIterable all cases are correct`() {
        let allCases = TestBooleanAttribute.allCases
        let values = Set(allCases.map(\.rawValue))
        #expect(values == Set([true, false]))
    }

    @Test func `Equality comparison`() {
        let trueAttr1 = TestBooleanAttribute(value: true)
        let trueAttr2 = TestBooleanAttribute(value: true)
        let falseAttr = TestBooleanAttribute(value: false)

        #expect(trueAttr1 == trueAttr2)
        #expect(trueAttr1 != falseAttr)
        #expect(trueAttr2 != falseAttr)
    }

    @Test func `Sendable conformance (compile-time check)`() {
        let attr = TestBooleanAttribute(value: true)

        Task { _ = attr }
    }

    @Test func `String interpolation works`() {
        let trueAttr = TestBooleanAttribute(value: true)
        let falseAttr = TestBooleanAttribute(value: false)

        let trueMessage = "Bool attribute: \(trueAttr)"
        let falseMessage = "Bool attribute: \(falseAttr)"

        #expect(trueMessage == "Bool attribute: true")
        #expect(falseMessage == "Bool attribute: false")
    }

    @Test func `Any WHATWG_HTML.BooleanAttribute type erasure`() {
        let trueAttr: any WHATWG_HTML.BooleanAttribute = TestBooleanAttribute(value: true)
        let falseAttr: any WHATWG_HTML.BooleanAttribute = TestBooleanAttribute(value: false)

        #expect(trueAttr.rawValue == true)
        #expect(falseAttr.rawValue == false)
        #expect(trueAttr.description == "true")
        #expect(falseAttr.description == "false")
    }

    @Test func `Any WHATWG_HTML.BooleanAttribute equality through protocol`() {
        let trueAttr1: any WHATWG_HTML.BooleanAttribute = TestBooleanAttribute(value: true)
        let trueAttr2: any WHATWG_HTML.BooleanAttribute = TestBooleanAttribute(value: true)
        let falseAttr: any WHATWG_HTML.BooleanAttribute = TestBooleanAttribute(value: false)

        #expect(trueAttr1.rawValue == trueAttr2.rawValue)
        #expect(trueAttr1.rawValue != falseAttr.rawValue)
    }

    @Test func `Any WHATWG_HTML.BooleanAttribute CaseIterable`() {
        let allCases = TestBooleanAttribute.allCases
        let anyAllCases: [any WHATWG_HTML.BooleanAttribute] = allCases

        #expect(anyAllCases.count == 2)
        #expect(anyAllCases.map(\.rawValue).contains(true))
        #expect(anyAllCases.map(\.rawValue).contains(false))
    }

    @Test func `Default value initialization pattern`() {
        struct TestWithDefault: WHATWG_HTML.BooleanAttribute {
            static var attribute: String { "test-default" }
            var rawValue: Bool

            init(value: Bool = true) { self.rawValue = value }
        }

        let defaultAttr = TestWithDefault()
        #expect(defaultAttr.rawValue == true)

        let explicitTrue = TestWithDefault(value: true)
        #expect(explicitTrue.rawValue == true)

        let explicitFalse = TestWithDefault(value: false)
        #expect(explicitFalse.rawValue == false)
    }

    @Test func `Boolean logic operations through dynamic member lookup`() {
        let trueAttr = TestBooleanAttribute(value: true)
        let falseAttr = TestBooleanAttribute(value: false)

        // Test that we can access Bool's properties through dynamic member lookup
        #expect(trueAttr.description == "true")
        #expect(falseAttr.description == "false")
    }
}
