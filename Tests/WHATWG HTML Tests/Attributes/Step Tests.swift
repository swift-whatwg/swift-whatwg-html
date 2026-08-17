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

@Suite struct `Step Test` {
    @Test func `Step attribute should be step`() {
        #expect(WHATWG.HTML.Step.Attribute.attribute == "step")
    }

    @Test func `Step should support enum cases`() {
        #expect(WHATWG.HTML.Step.Attribute.any.rawValue == "any")
        #expect(WHATWG.HTML.Step.Attribute.value(1.5).rawValue == "1.5")
    }

    @Test func `Step should support integer literal`() {
        let step: WHATWG.HTML.Step.Attribute = 5
        #expect(step.rawValue == "5.0")
    }

    @Test func `Step should support float literal`() {
        let step: WHATWG.HTML.Step.Attribute = 0.1
        #expect(step.rawValue == "0.1")
    }

    @Test func `Step should have predefined convenience values`() {
        #expect(WHATWG.HTML.Step.Attribute.integer.rawValue == "1.0")
        #expect(WHATWG.HTML.Step.Attribute.tenth.rawValue == "0.1")
        #expect(WHATWG.HTML.Step.Attribute.hundredth.rawValue == "0.01")
        #expect(WHATWG.HTML.Step.Attribute.thousandth.rawValue == "0.001")
        #expect(WHATWG.HTML.Step.Attribute.money.rawValue == "0.01")
        #expect(WHATWG.HTML.Step.Attribute.weekly.rawValue == "7.0")
    }
}
