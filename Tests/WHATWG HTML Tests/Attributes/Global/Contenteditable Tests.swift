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
        #expect(WHATWG.HTML.Contenteditable.Attribute.attribute == "contenteditable")
    }

    @Test(
        "Contenteditable cases description should match the spec",
        arguments: WHATWG.HTML.Contenteditable.Attribute.allCases
    ) func cases(contenteditable: WHATWG.HTML.Contenteditable.Attribute) {
        switch contenteditable {
        case .true: #expect(contenteditable.description == "true")
        case .false: #expect(contenteditable.description == "false")
        case .plaintextOnly: #expect(contenteditable.description == "plaintext-only")
        case .empty: #expect(contenteditable.description.isEmpty)
        default: ()
        }
    }

    @Test func `Contenteditable should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Contenteditable.Attribute.allCases.count == 4)
        #expect(WHATWG.HTML.Contenteditable.Attribute.allCases.contains(.true))
        #expect(WHATWG.HTML.Contenteditable.Attribute.allCases.contains(.false))
        #expect(WHATWG.HTML.Contenteditable.Attribute.allCases.contains(.plaintextOnly))
        #expect(WHATWG.HTML.Contenteditable.Attribute.allCases.contains(.empty))
    }

    @Test(arguments: WHATWG.HTML.Contenteditable.Attribute.allCases)
    func `Contenteditable rawValue should match description`(
        contenteditable: WHATWG.HTML.Contenteditable.Attribute
    ) {
        #expect(contenteditable.rawValue == contenteditable.description)
    }

    @Test(
        arguments: [
            ("true", WHATWG.HTML.Contenteditable.Attribute.true),
            ("false", WHATWG.HTML.Contenteditable.Attribute.false),
            ("plaintext-only", WHATWG.HTML.Contenteditable.Attribute.plaintextOnly),
        ]
    ) func `Contenteditable should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Contenteditable.Attribute?
    ) {
        #expect(WHATWG.HTML.Contenteditable.Attribute(rawValue: input) == expected)
    }
}
