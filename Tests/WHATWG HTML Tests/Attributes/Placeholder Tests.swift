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

@Suite struct `Placeholder Test` {
    @Test func `Placeholder attribute should be placeholder`() {
        #expect(WHATWG_HTML.Attribute.Placeholder.attribute == "placeholder")
    }

    @Test func `Placeholder convenience properties`() {
        #expect(WHATWG_HTML.Attribute.Placeholder.email.rawValue == "email")
        #expect(WHATWG_HTML.Attribute.Placeholder.phone.rawValue == "phone")
        #expect(WHATWG_HTML.Attribute.Placeholder.name.rawValue == "name")
        #expect(WHATWG_HTML.Attribute.Placeholder.search.rawValue == "search")
        #expect(WHATWG_HTML.Attribute.Placeholder.url.rawValue == "url")
    }
}
