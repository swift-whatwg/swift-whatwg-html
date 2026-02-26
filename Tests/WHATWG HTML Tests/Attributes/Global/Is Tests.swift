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

@Suite struct `Is Test` {
    @Test func `Is attribute should be is`() { #expect(Is.attribute == "is") }

    @Test func `Is should store and return its value`() {
        let is_ = Is("custom-button")
        #expect(is_.rawValue == "custom-button")
    }

    @Test func `Is description should return its value`() {
        let is_ = Is("file-viewer")
        #expect(is_.description == "file-viewer")
    }

    @Test func `Is should be initializable with string literal`() {
        let is_: Is = "special-element"
        #expect(is_.rawValue == "special-element")
    }
}
