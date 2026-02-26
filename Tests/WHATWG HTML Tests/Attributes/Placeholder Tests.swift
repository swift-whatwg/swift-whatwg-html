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
        #expect(Placeholder.attribute == "placeholder")
    }

    @Test func `Placeholder convenience properties`() {
        #expect(Placeholder.email.rawValue == "email")
        #expect(Placeholder.phone.rawValue == "phone")
        #expect(Placeholder.name.rawValue == "name")
        #expect(Placeholder.search.rawValue == "search")
        #expect(Placeholder.url.rawValue == "url")
    }
}
