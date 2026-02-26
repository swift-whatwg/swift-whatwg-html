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

@Suite struct `Nonce Test` {
    @Test func `Nonce attribute should be nonce`() { #expect(Nonce.attribute == "nonce") }

    @Test func `Nonce should store and return its value`() {
        let nonce = Nonce("abc123xyz789")
        #expect(nonce.rawValue == "abc123xyz789")
    }

    @Test func `Nonce description should return its value`() {
        let nonce = Nonce("xyz987abc321")
        #expect(nonce.description == "xyz987abc321")
    }

    @Test func `Nonce should be initializable with string literal`() {
        let nonce: Nonce = "pqr456mno789"
        #expect(nonce.rawValue == "pqr456mno789")
    }
}
