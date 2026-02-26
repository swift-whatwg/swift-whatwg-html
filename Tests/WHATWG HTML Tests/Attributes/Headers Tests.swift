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

@Suite struct `Headers Test` {
    @Test func `Headers attribute should be headers`() { #expect(Headers.attribute == "headers") }

    @Test func `Headers array literal support`() {
        let headers: Headers = ["header1", "header2", "header3"]
        #expect(headers.rawValue == "header1 header2 header3")
    }
}
