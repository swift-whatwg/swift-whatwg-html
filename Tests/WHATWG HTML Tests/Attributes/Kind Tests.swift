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

@Suite struct `Kind Test` {
    @Test func `Kind attribute should be kind`() { #expect(WHATWG_HTML.Attribute.Kind.attribute == "kind") }

    @Test func `Kind convenience properties`() {
        #expect(WHATWG_HTML.Attribute.Kind.subtitles.rawValue == "subtitles")
        #expect(WHATWG_HTML.Attribute.Kind.captions.rawValue == "captions")
        #expect(WHATWG_HTML.Attribute.Kind.chapters.rawValue == "chapters")
        #expect(WHATWG_HTML.Attribute.Kind.metadata.rawValue == "metadata")
    }
}
