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

@Suite struct `Virtualkeyboardpolicy Test` {
    @Test func `Virtualkeyboardpolicy attribute should be virtualkeyboardpolicy`() {
        #expect(WHATWG.HTML.Virtualkeyboardpolicy.Attribute.attribute == "virtualkeyboardpolicy")
    }

    @Test func `Virtualkeyboardpolicy description should match the spec`() {
        #expect(WHATWG.HTML.Virtualkeyboardpolicy.Attribute.auto.description == "auto")
        #expect(WHATWG.HTML.Virtualkeyboardpolicy.Attribute.manual.description == "manual")
    }
}
