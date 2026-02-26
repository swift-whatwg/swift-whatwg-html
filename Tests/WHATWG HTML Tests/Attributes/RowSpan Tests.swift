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

@Suite struct `RowSpan Test` {
    @Test func `RowSpan attribute should be rowspan`() { #expect(RowSpan.attribute == "rowspan") }

    @Test func `RowSpan should support integer literal`() {
        let rowspan: RowSpan = 3
        #expect(rowspan.rawValue == "3")
    }
}
