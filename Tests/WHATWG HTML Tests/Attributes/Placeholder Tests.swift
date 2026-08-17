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
        #expect(WHATWG.HTML.Placeholder.Attribute.attribute == "placeholder")
    }

    @Test func `Placeholder convenience properties`() {
        #expect(WHATWG.HTML.Placeholder.Attribute.email.rawValue == "email")
        #expect(WHATWG.HTML.Placeholder.Attribute.phone.rawValue == "phone")
        #expect(WHATWG.HTML.Placeholder.Attribute.name.rawValue == "name")
        #expect(WHATWG.HTML.Placeholder.Attribute.search.rawValue == "search")
        #expect(WHATWG.HTML.Placeholder.Attribute.url.rawValue == "url")
    }
}
