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

@Suite struct `ButtonType Test` {
    @Test func `ButtonType attribute should be type`() { #expect(ButtonType.attribute == "type") }

    @Test func `ButtonType convenience properties`() {
        #expect(ButtonType.submit.rawValue == "submit")
        #expect(ButtonType.reset.rawValue == "reset")
        #expect(ButtonType.button.rawValue == "button")
    }
}
