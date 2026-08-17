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
    @Test func `Preload attribute should be preload`() {
        #expect(WHATWG.HTML.Attribute.Preload.attribute == "preload")
    }

    @Test func `Preload convenience properties`() {
        #expect(WHATWG.HTML.Attribute.Preload.none.rawValue == "none")
        #expect(WHATWG.HTML.Attribute.Preload.metadata.rawValue == "metadata")
        #expect(WHATWG.HTML.Attribute.Preload.auto.rawValue == "auto")
    }
}
