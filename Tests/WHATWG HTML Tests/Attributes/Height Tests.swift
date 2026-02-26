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

@Suite struct `Height Test` {
    @Test func `Height attribute should be height`() { #expect(Height.attribute == "height") }

    @Test func `Height should support integer literal`() {
        let height: Height = 300
        #expect(height.rawValue == "300")
    }
}
