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
        #expect(WHATWG.HTML.Attribute.Step.attribute == "step")
    }

    @Test func `Step should support enum cases`() {
        #expect(WHATWG.HTML.Attribute.Step.any.rawValue == "any")
        #expect(WHATWG.HTML.Attribute.Step.value(1.5).rawValue == "1.5")
    }

    @Test func `Step should support integer literal`() {
        let step: WHATWG.HTML.Attribute.Step = 5
        #expect(step.rawValue == "5.0")
    }

    @Test func `Step should support float literal`() {
        let step: WHATWG.HTML.Attribute.Step = 0.1
        #expect(step.rawValue == "0.1")
    }

    @Test func `Step should have predefined convenience values`() {
        #expect(WHATWG.HTML.Attribute.Step.integer.rawValue == "1.0")
        #expect(WHATWG.HTML.Attribute.Step.tenth.rawValue == "0.1")
        #expect(WHATWG.HTML.Attribute.Step.hundredth.rawValue == "0.01")
        #expect(WHATWG.HTML.Attribute.Step.thousandth.rawValue == "0.001")
        #expect(WHATWG.HTML.Attribute.Step.money.rawValue == "0.01")
        #expect(WHATWG.HTML.Attribute.Step.weekly.rawValue == "7.0")
    }
}
