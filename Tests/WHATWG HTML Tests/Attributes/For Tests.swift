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

@Suite struct `For Test` {
    @Test func `For attribute should be for`() { #expect(For.attribute == "for") }

    @Test func `For should support array literal`() {
        let forAttribute: For = ["input1", "input2"]
        #expect(forAttribute.rawValue == "input1 input2")
    }
}
