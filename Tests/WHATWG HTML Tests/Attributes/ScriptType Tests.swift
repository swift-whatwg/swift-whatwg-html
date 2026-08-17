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
    @Test func `ScriptType attribute should be type`() { #expect(WHATWG_HTML.Attribute.ScriptType.attribute == "type") }

    @Test func `ScriptType should have predefined values`() {
        #expect(WHATWG_HTML.Attribute.ScriptType.module.rawValue == "module")
        #expect(WHATWG_HTML.Attribute.ScriptType.importmap.rawValue == "importmap")
        #expect(WHATWG_HTML.Attribute.ScriptType.speculationrules.rawValue == "speculationrules")
        #expect(WHATWG_HTML.Attribute.ScriptType.json.rawValue == "application/json")
        #expect(WHATWG_HTML.Attribute.ScriptType.textPlain.rawValue == "text/plain")
    }
}
