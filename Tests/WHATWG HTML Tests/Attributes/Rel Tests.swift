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

@Suite struct `Rel Test` {
    @Test func `Rel attribute should be rel`() { #expect(Rel.attribute == "rel") }

    @Test func `Rel convenience properties`() {
        #expect(Rel.stylesheet.rawValue == "stylesheet")
        #expect(Rel.icon.rawValue == "icon")
        #expect(Rel.canonical.rawValue == "canonical")
        #expect(Rel.external.rawValue == "external")
        #expect(Rel.noopener.rawValue == "noopener")
        #expect(Rel.noreferrer.rawValue == "noreferrer")
        #expect(Rel.preload.rawValue == "preload")
    }

    @Test func `Rel array literal support`() {
        let rel: Rel = ["external", "noopener", "noreferrer"]
        #expect(rel.rawValue == "external noopener noreferrer")
    }

    @Test func `Rel secure external convenience`() {
        #expect(Rel.secureExternal.rawValue.contains("external"))
        #expect(Rel.secureExternal.rawValue.contains("noopener"))
        #expect(Rel.secureExternal.rawValue.contains("noreferrer"))
    }
}
