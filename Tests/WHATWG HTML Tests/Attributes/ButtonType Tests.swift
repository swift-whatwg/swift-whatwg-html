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
    @Test func `ButtonType attribute should be type`() {
        #expect(WHATWG.HTML.Button.`Type`.Attribute.attribute == "type")
    }

    @Test func `ButtonType convenience properties`() {
        #expect(WHATWG.HTML.Button.`Type`.Attribute.submit.rawValue == "submit")
        #expect(WHATWG.HTML.Button.`Type`.Attribute.reset.rawValue == "reset")
        #expect(WHATWG.HTML.Button.`Type`.Attribute.button.rawValue == "button")
    }
}
