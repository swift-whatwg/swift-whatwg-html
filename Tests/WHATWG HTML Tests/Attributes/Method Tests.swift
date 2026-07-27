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

@Suite struct `Method Test` {
    @Test func `Method attribute should be method`() { #expect(Method.attribute == "method") }

    @Test func `Method convenience properties`() {
        #expect(Method.get.rawValue == "get")
        #expect(Method.post.rawValue == "post")
        #expect(Method.dialog.rawValue == "dialog")
    }

    @Test func `Method should lowercase input`() {
        let method = Method(value: "POST")
        #expect(method.rawValue == "post")
    }
}
