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

@Suite struct `As Test` {
    @Test func `As attribute should be as`() { #expect(WHATWG_HTML.Attribute.As.attribute == "as") }

    @Test func `As convenience properties`() {
        #expect(WHATWG_HTML.Attribute.As.audio.rawValue == "audio")
        #expect(WHATWG_HTML.Attribute.As.document.rawValue == "document")
        #expect(WHATWG_HTML.Attribute.As.embed.rawValue == "embed")
        #expect(WHATWG_HTML.Attribute.As.fetch.rawValue == "fetch")
        #expect(WHATWG_HTML.Attribute.As.font.rawValue == "font")
        #expect(WHATWG_HTML.Attribute.As.image.rawValue == "image")
        #expect(WHATWG_HTML.Attribute.As.object.rawValue == "object")
        #expect(WHATWG_HTML.Attribute.As.script.rawValue == "script")
        #expect(WHATWG_HTML.Attribute.As.style.rawValue == "style")
        #expect(WHATWG_HTML.Attribute.As.track.rawValue == "track")
        #expect(WHATWG_HTML.Attribute.As.worker.rawValue == "worker")
    }
}
