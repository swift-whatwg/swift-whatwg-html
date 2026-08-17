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
    @Test func `Rel attribute should be rel`() {
        #expect(WHATWG_HTML.Attribute.Rel.attribute == "rel")
    }

    @Test func `Rel convenience properties`() {
        #expect(WHATWG_HTML.Attribute.Rel.stylesheet.rawValue == "stylesheet")
        #expect(WHATWG_HTML.Attribute.Rel.icon.rawValue == "icon")
        #expect(WHATWG_HTML.Attribute.Rel.canonical.rawValue == "canonical")
        #expect(WHATWG_HTML.Attribute.Rel.external.rawValue == "external")
        #expect(WHATWG_HTML.Attribute.Rel.noopener.rawValue == "noopener")
        #expect(WHATWG_HTML.Attribute.Rel.noreferrer.rawValue == "noreferrer")
        #expect(WHATWG_HTML.Attribute.Rel.preload.rawValue == "preload")
    }

    @Test func `Rel array literal support`() {
        let rel: WHATWG_HTML.Attribute.Rel = ["external", "noopener", "noreferrer"]
        #expect(rel.rawValue == "external noopener noreferrer")
    }

    @Test func `Rel secure external convenience`() {
        #expect(WHATWG_HTML.Attribute.Rel.secureExternal.rawValue.contains("external"))
        #expect(WHATWG_HTML.Attribute.Rel.secureExternal.rawValue.contains("noopener"))
        #expect(WHATWG_HTML.Attribute.Rel.secureExternal.rawValue.contains("noreferrer"))
    }
}
