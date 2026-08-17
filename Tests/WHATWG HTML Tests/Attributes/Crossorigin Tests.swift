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
        #expect(WHATWG.HTML.Attribute.Crossorigin.attribute == "crossorigin")
    }

    @Test func `Crossorigin convenience properties`() {
        #expect(WHATWG.HTML.Attribute.Crossorigin.anonymous.rawValue == "anonymous")
        #expect(WHATWG.HTML.Attribute.Crossorigin.useCredentials.rawValue == "use-credentials")
    }
}
