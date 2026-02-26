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

@Suite struct `Dirname Test` {
    @Test func `Dirname attribute should be dirname`() { #expect(Dirname.attribute == "dirname") }

    @Test func `Dirname should support initialization based on element name`() {
        let dirname = Dirname(basedOn: "comment")
        #expect(dirname.rawValue == "comment-direction")

        let dirnameCustomSuffix = Dirname(basedOn: "message", suffix: "-dir")
        #expect(dirnameCustomSuffix.rawValue == "message-dir")
    }
}
