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

@Suite struct `Scrolling Test` {
    @Test func `Scrolling attribute should be scrolling`() {
        #expect(Scrolling.attribute == "scrolling")
    }

    @Test func `Scrolling should have predefined values`() {
        #expect(Scrolling.yes.rawValue == "yes")
        #expect(Scrolling.no.rawValue == "no")
        #expect(Scrolling.auto.rawValue == "auto")
    }
}
