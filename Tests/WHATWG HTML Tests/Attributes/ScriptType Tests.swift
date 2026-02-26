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
    @Test func `ScriptType attribute should be type`() { #expect(ScriptType.attribute == "type") }

    @Test func `ScriptType should have predefined values`() {
        #expect(ScriptType.module.rawValue == "module")
        #expect(ScriptType.importmap.rawValue == "importmap")
        #expect(ScriptType.speculationrules.rawValue == "speculationrules")
        #expect(ScriptType.json.rawValue == "application/json")
        #expect(ScriptType.textPlain.rawValue == "text/plain")
    }
}
