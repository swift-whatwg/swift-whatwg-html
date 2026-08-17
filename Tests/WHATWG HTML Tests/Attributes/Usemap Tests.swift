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

@Suite struct `Usemap Test` {
    @Test func `Usemap attribute should be usemap`() {
        #expect(WHATWG.HTML.Attribute.Usemap.attribute == "usemap")
    }

    @Test func `Usemap should automatically add # prefix`() {
        let withoutHash = WHATWG.HTML.Attribute.Usemap("planetmap")
        #expect(withoutHash.rawValue == "#planetmap")

        let withHash = WHATWG.HTML.Attribute.Usemap("#planetmap")
        #expect(withHash.rawValue == "#planetmap")
    }

    @Test func `Usemap should support string literal`() {
        let usemap: WHATWG.HTML.Attribute.Usemap = "mymap"
        #expect(usemap.rawValue == "#mymap")
    }
}
