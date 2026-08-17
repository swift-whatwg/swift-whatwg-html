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

@Suite struct `FormMethod Test` {
    @Test func `FormMethod attribute should be formmethod`() {
        #expect(WHATWG.HTML.FormMethod.Attribute.attribute == "formmethod")
    }

    @Test func `FormMethod should have predefined values`() {
        #expect(WHATWG.HTML.FormMethod.Attribute.get.rawValue == "get")
        #expect(WHATWG.HTML.FormMethod.Attribute.post.rawValue == "post")
        #expect(WHATWG.HTML.FormMethod.Attribute.dialog.rawValue == "dialog")
    }

    @Test func `FormMethod should convert to lowercase`() {
        let method = WHATWG.HTML.FormMethod.Attribute(value: "POST")
        #expect(method.rawValue == "post")
    }
}
