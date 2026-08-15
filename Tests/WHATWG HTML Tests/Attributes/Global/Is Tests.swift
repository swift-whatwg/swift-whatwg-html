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
        let `is` = Is("custom-button")
        #expect(`is`.rawValue == "custom-button")
    }

    @Test func `Is description should return its value`() {
        let `is` = Is("file-viewer")
        #expect(`is`.description == "file-viewer")
    }

    @Test func `Is should be initializable with string literal`() {
        let `is`: Is = "special-element"
        #expect(`is`.rawValue == "special-element")
    }
}
