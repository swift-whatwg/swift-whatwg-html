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

@Suite struct `Crossorigin Test` {
    @Test func `Crossorigin attribute should be crossorigin`() {
        #expect(Crossorigin.attribute == "crossorigin")
    }

    @Test func `Crossorigin convenience properties`() {
        #expect(Crossorigin.anonymous.rawValue == "anonymous")
        #expect(Crossorigin.useCredentials.rawValue == "use-credentials")
    }
}
