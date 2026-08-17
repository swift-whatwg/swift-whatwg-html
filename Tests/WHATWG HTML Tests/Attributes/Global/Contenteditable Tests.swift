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

@Suite struct `Contenteditable Test` {
    @Test func `Contenteditable attribute should be contenteditable`() {
        #expect(WHATWG_HTML.Attribute.Contenteditable.attribute == "contenteditable")
    }

    @Test(
        "Contenteditable cases description should match the spec",
        arguments: WHATWG_HTML.Attribute.Contenteditable.allCases
    ) func cases(contenteditable: WHATWG_HTML.Attribute.Contenteditable) {
        switch contenteditable {
        case .true: #expect(contenteditable.description == "true")
        case .false: #expect(contenteditable.description == "false")
        case .plaintextOnly: #expect(contenteditable.description == "plaintext-only")
        case .empty: #expect(contenteditable.description.isEmpty)
        default: ()
        }
    }

    @Test func `Contenteditable should conform to CaseIterable`() {
        #expect(WHATWG_HTML.Attribute.Contenteditable.allCases.count == 4)
        #expect(WHATWG_HTML.Attribute.Contenteditable.allCases.contains(.true))
        #expect(WHATWG_HTML.Attribute.Contenteditable.allCases.contains(.false))
        #expect(WHATWG_HTML.Attribute.Contenteditable.allCases.contains(.plaintextOnly))
        #expect(WHATWG_HTML.Attribute.Contenteditable.allCases.contains(.empty))
    }

    @Test(arguments: WHATWG_HTML.Attribute.Contenteditable.allCases)
    func `Contenteditable rawValue should match description`(contenteditable: WHATWG_HTML.Attribute.Contenteditable) {
        #expect(contenteditable.rawValue == contenteditable.description)
    }

    @Test(
        arguments: [
            ("true", WHATWG_HTML.Attribute.Contenteditable.true), ("false", WHATWG_HTML.Attribute.Contenteditable.false),
            ("plaintext-only", WHATWG_HTML.Attribute.Contenteditable.plaintextOnly),
        ]
    ) func `Contenteditable should be initializable from rawValue`(
        input: String,
        expected: WHATWG_HTML.Attribute.Contenteditable?
    ) {
        #expect(WHATWG_HTML.Attribute.Contenteditable(rawValue: input) == expected)
    }
}
