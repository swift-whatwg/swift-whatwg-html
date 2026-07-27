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
        #expect(FormMethod.attribute == "formmethod")
    }

    @Test func `FormMethod should have predefined values`() {
        #expect(FormMethod.get.rawValue == "get")
        #expect(FormMethod.post.rawValue == "post")
        #expect(FormMethod.dialog.rawValue == "dialog")
    }

    @Test func `FormMethod should convert to lowercase`() {
        let method = FormMethod(value: "POST")
        #expect(method.rawValue == "post")
    }
}
