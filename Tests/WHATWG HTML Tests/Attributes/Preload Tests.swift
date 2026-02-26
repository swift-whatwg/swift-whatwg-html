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

@Suite struct `Preload Test` {
    @Test func `Preload attribute should be preload`() { #expect(Preload.attribute == "preload") }

    @Test func `Preload convenience properties`() {
        #expect(Preload.none.rawValue == "none")
        #expect(Preload.metadata.rawValue == "metadata")
        #expect(Preload.auto.rawValue == "auto")
    }
}
