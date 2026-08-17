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

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `DataAttribute Test` {
    @Test func `DataAttribute prefix should be data-`() {
        #expect(WHATWG.HTML.Data.Attribute.prefix == "data-")
    }

    @Test func `DataAttribute should initialize with name and value`() {
        let dataAttr = WHATWG.HTML.Data.Attribute(name: "user-id", value: "123")
        #expect(dataAttr.name == "user-id")
        #expect(dataAttr.value == "123")
    }

    @Test func `DataAttribute attribute should combine prefix and name`() {
        let dataAttr = WHATWG.HTML.Data.Attribute(name: "user-id", value: "123")
        #expect(dataAttr.attributeName == "data-user-id")
    }

    @Test func `DataAttribute description should match the value`() {
        let dataAttr = WHATWG.HTML.Data.Attribute(name: "user-id", value: "123")
        #expect(dataAttr.description == "123")
    }
}
