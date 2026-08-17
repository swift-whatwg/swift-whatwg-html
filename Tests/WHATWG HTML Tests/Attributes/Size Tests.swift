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

@Suite struct `Size Test` {
    @Test func `Size attribute should be size`() { #expect(WHATWG_HTML.Attribute.Size.attribute == "size") }

    @Test func `Size convenience properties`() {
        #expect(WHATWG_HTML.Attribute.Size.standardTextField.rawValue == "30")
        #expect(WHATWG_HTML.Attribute.Size.smallTextField.rawValue == "10")
        #expect(WHATWG_HTML.Attribute.Size.largeTextField.rawValue == "50")
        #expect(WHATWG_HTML.Attribute.Size.standardListbox.rawValue == "5")
    }

    @Test func `Size should support integer literal`() {
        let size: WHATWG_HTML.Attribute.Size = 25
        #expect(size.rawValue == "25")
    }

    @Test func `Size should enforce minimum value of 1`() {
        let size: WHATWG_HTML.Attribute.Size = 0
        #expect(size.rawValue == "1")
    }
}
