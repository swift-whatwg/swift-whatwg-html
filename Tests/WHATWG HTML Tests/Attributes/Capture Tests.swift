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

@Suite struct `Capture Test` {
    @Test func `Capture attribute should be capture`() { #expect(Capture.attribute == "capture") }

    @Test func `Capture convenience properties`() {
        #expect(Capture.user.rawValue == "user")
        #expect(Capture.environment.rawValue == "environment")
    }
}
