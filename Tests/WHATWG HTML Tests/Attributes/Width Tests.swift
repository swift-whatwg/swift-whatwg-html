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

@Suite struct `Width Test` {
    @Test func `Width attribute should be width`() { #expect(Width.attribute == "width") }

    @Test func `Width should support integer literal`() {
        let width: Width = 400
        #expect(width.rawValue == "400")
    }

    @Test func `Width should support integer init`() {
        let width = Width(300)
        #expect(width.rawValue == "300")
    }
}
