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

@Suite struct `Id Test` {
    @Test func `Id attribute should be id`() { #expect(Id.attribute == "id") }

    @Test func `Id should store and return its value`() {
        let id = Id("header-section")
        #expect(id.rawValue == "header-section")
    }

    @Test func `Id description should return its value`() {
        let id = Id("main-content")
        #expect(id.description == "main-content")
    }

    @Test func `Id should be initializable with string literal`() {
        let id: Id = "footer"
        #expect(id.rawValue == "footer")
    }
}
