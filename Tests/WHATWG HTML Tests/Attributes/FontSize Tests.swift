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

@Suite struct `FontSize Test` {
    @Test func `FontSize attribute should be size`() { #expect(FontSize.attribute == "size") }

    @Test func `FontSize should support numeric initialization`() {
        let fontSize = FontSize(numericValue: 5)
        #expect(fontSize.rawValue == "5")
    }

    @Test func `FontSize should support relative initialization`() {
        let positiveRelative = FontSize(relativeValue: 2)
        #expect(positiveRelative.rawValue == "+2")

        let negativeRelative = FontSize(relativeValue: -1)
        #expect(negativeRelative.rawValue == "-1")
    }

    @Test func `FontSize should support integer literal`() {
        let fontSize: FontSize = 3
        #expect(fontSize.rawValue == "3")
    }
}
