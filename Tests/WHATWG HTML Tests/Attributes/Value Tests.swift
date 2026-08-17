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

@Suite struct `Value Test` {
    @Test func `Value attribute should be value`() {
        #expect(WHATWG.HTML.Value.Attribute<String>.attribute == "value")
    }

    @Test func `Value should support string literals`() {
        let stringValue: WHATWG.HTML.Value.Attribute<String> = "test"
        #expect(stringValue.value == "test")
    }

    @Test func `Value should support integer literals`() {
        let intValue: WHATWG.HTML.Value.Attribute<Int> = 42
        #expect(intValue.value == 42)
    }
}
