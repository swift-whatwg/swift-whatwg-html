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

@Suite struct `MarginHeight Test` {
    @Test func `MarginHeight attribute should be marginheight`() {
        #expect(MarginHeight.attribute == "marginheight")
    }

    @Test func `MarginHeight should support integer literal`() {
        let marginHeight: MarginHeight = 10
        #expect(marginHeight.rawValue == "10")
    }
}
