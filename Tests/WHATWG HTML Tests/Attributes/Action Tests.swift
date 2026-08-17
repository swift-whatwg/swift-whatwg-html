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

@Suite struct `Action Test` {
    @Test func `Action attribute should be action`() {
        #expect(WHATWG.HTML.Action.Attribute.attribute == "action")
    }

    @Test func `Action relative path factory`() {
        #expect(WHATWG.HTML.Action.Attribute.relative("submit").rawValue == "/submit")
        #expect(WHATWG.HTML.Action.Attribute.relative("/submit").rawValue == "/submit")
    }

    @Test func `Action absolute URL factory`() {
        #expect(
            WHATWG.HTML.Action.Attribute.absolute("https://example.com/submit").rawValue
                == "https://example.com/submit"
        )
    }

    @Test func `Action convenience properties`() {
        #expect(WHATWG.HTML.Action.Attribute.current.rawValue == ".")
        #expect(WHATWG.HTML.Action.Attribute.clientSide.rawValue == "#")
    }
}
