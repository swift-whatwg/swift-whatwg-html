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

@Suite struct `ScriptType Test` {
    @Test func `ScriptType attribute should be type`() {
        #expect(WHATWG.HTML.Script.`Type`.Attribute.attribute == "type")
    }

    @Test func `ScriptType should have predefined values`() {
        #expect(WHATWG.HTML.Script.`Type`.Attribute.module.rawValue == "module")
        #expect(WHATWG.HTML.Script.`Type`.Attribute.importmap.rawValue == "importmap")
        #expect(WHATWG.HTML.Script.`Type`.Attribute.speculationrules.rawValue == "speculationrules")
        #expect(WHATWG.HTML.Script.`Type`.Attribute.json.rawValue == "application/json")
        #expect(WHATWG.HTML.Script.`Type`.Attribute.textPlain.rawValue == "text/plain")
    }
}
