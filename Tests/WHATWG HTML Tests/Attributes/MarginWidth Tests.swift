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

@Suite struct `MarginWidth Test` {
    @Test func `MarginWidth attribute should be marginwidth`() {
        #expect(MarginWidth.attribute == "marginwidth")
    }

    @Test func `MarginWidth should support integer literal`() {
        let marginWidth: MarginWidth = 20
        #expect(marginWidth.rawValue == "20")
    }
}
