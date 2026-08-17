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
    @Test func `Pattern attribute should be pattern`() {
        #expect(WHATWG_HTML.Attribute.Pattern.attribute == "pattern")
    }

    @Test func `Pattern convenience properties`() {
        #expect(WHATWG_HTML.Attribute.Pattern.username.rawValue == "[a-zA-Z0-9]{3,16}")
        #expect(WHATWG_HTML.Attribute.Pattern.usPhone.rawValue == "[0-9]{3}-[0-9]{3}-[0-9]{4}")
        #expect(WHATWG_HTML.Attribute.Pattern.usZipCode.rawValue == "[0-9]{5}(-[0-9]{4})?")
        #expect(WHATWG_HTML.Attribute.Pattern.integer.rawValue == "[0-9]+")
        #expect(WHATWG_HTML.Attribute.Pattern.alphanumeric.rawValue == "[a-zA-Z0-9]+")
    }
}
