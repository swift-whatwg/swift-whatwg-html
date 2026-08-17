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

@Suite struct `Loading Test` {
    @Test func `Loading attribute should be loading`() {
        #expect(WHATWG.HTML.Attribute.Loading.attribute == "loading")
    }

    @Test func `Loading convenience properties`() {
        #expect(WHATWG.HTML.Attribute.Loading.lazy.rawValue == "lazy")
        #expect(WHATWG.HTML.Attribute.Loading.eager.rawValue == "eager")
    }

    @Test func `Loading should conform to CaseIterable`() {
        #expect(WHATWG.HTML.Attribute.Loading.allCases.count == 2)
        #expect(WHATWG.HTML.Attribute.Loading.allCases.contains(.lazy))
        #expect(WHATWG.HTML.Attribute.Loading.allCases.contains(.eager))
    }
}
