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

@Suite struct `FetchPriority Test` {
    @Test func `FetchPriority attribute should be fetchpriority`() {
        #expect(WHATWG.HTML.FetchPriority.Attribute.attribute == "fetchpriority")
    }

    @Test func `FetchPriority convenience properties`() {
        #expect(WHATWG.HTML.FetchPriority.Attribute.high.rawValue == "high")
        #expect(WHATWG.HTML.FetchPriority.Attribute.low.rawValue == "low")
        #expect(WHATWG.HTML.FetchPriority.Attribute.auto.rawValue == "auto")
    }

    @Test func `FetchPriority should conform to CaseIterable`() {
        #expect(WHATWG.HTML.FetchPriority.Attribute.allCases.count == 3)
        #expect(WHATWG.HTML.FetchPriority.Attribute.allCases.contains(.high))
        #expect(WHATWG.HTML.FetchPriority.Attribute.allCases.contains(.low))
        #expect(WHATWG.HTML.FetchPriority.Attribute.allCases.contains(.auto))
    }
}
