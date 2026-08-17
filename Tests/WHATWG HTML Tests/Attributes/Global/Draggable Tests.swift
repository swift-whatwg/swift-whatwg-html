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

@Suite struct `Draggable Test` {
    @Test func `Draggable attribute should be draggable`() {
        #expect(WHATWG.HTML.Attribute.Draggable.attribute == "draggable")
    }

    @Test(
        "Draggable cases description should match the spec",
        arguments: WHATWG.HTML.Attribute.Draggable.allCases
    )
    func cases(draggable: WHATWG.HTML.Attribute.Draggable) {
        switch draggable {
        case .true: #expect(draggable.description == "true")
        case .false: #expect(draggable.description == "false")
        case .auto: #expect(draggable.description == "auto")
        default: ()
        }
    }

    @Test func `Draggable should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Attribute.Draggable.allCases.count == 3)
        #expect(WHATWG.HTML.Attribute.Draggable.allCases.contains(.true))
        #expect(WHATWG.HTML.Attribute.Draggable.allCases.contains(.false))
        #expect(WHATWG.HTML.Attribute.Draggable.allCases.contains(.auto))
    }

    @Test(arguments: WHATWG.HTML.Attribute.Draggable.allCases)
    func `Draggable rawValue should match description`(draggable: WHATWG.HTML.Attribute.Draggable) {
        #expect(draggable.rawValue == draggable.description)
    }

    @Test(
        arguments: [
            ("true", WHATWG.HTML.Attribute.Draggable.true),
            ("false", WHATWG.HTML.Attribute.Draggable.false),
            ("auto", WHATWG.HTML.Attribute.Draggable.auto),
        ]
    ) func `Draggable should be initializable from rawValue`(
        input: String,
        expected: WHATWG.HTML.Attribute.Draggable?
    ) {
        #expect(WHATWG.HTML.Attribute.Draggable(rawValue: input) == expected)
    }
}
