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
        #expect(FetchPriority.attribute == "fetchpriority")
    }

    @Test func `FetchPriority convenience properties`() {
        #expect(FetchPriority.high.rawValue == "high")
        #expect(FetchPriority.low.rawValue == "low")
        #expect(FetchPriority.auto.rawValue == "auto")
    }

    @Test func `FetchPriority should conform to CaseIterable`() {
        #expect(FetchPriority.allCases.count == 3)
        #expect(FetchPriority.allCases.contains(.high))
        #expect(FetchPriority.allCases.contains(.low))
        #expect(FetchPriority.allCases.contains(.auto))
    }
}
