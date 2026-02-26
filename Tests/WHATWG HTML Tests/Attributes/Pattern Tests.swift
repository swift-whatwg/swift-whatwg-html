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

@Suite struct `Pattern Test` {
    @Test func `Pattern attribute should be pattern`() { #expect(Pattern.attribute == "pattern") }

    @Test func `Pattern convenience properties`() {
        #expect(Pattern.username.rawValue == "[a-zA-Z0-9]{3,16}")
        #expect(Pattern.usPhone.rawValue == "[0-9]{3}-[0-9]{3}-[0-9]{4}")
        #expect(Pattern.usZipCode.rawValue == "[0-9]{5}(-[0-9]{4})?")
        #expect(Pattern.integer.rawValue == "[0-9]+")
        #expect(Pattern.alphanumeric.rawValue == "[a-zA-Z0-9]+")
    }
}
