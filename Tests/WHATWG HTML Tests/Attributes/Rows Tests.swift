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

@Suite struct `Rows Test` {
    @Test func `Rows attribute should be rows`() { #expect(Rows.attribute == "rows") }

    @Test func `Rows should support integer literal`() {
        let rows: Rows = 5
        #expect(rows.rawValue == "5")
    }
}
