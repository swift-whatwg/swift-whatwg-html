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
    @Test func `As attribute should be as`() { #expect(WHATWG.HTML.Attribute.As.attribute == "as") }

    @Test func `As convenience properties`() {
        #expect(WHATWG.HTML.Attribute.As.audio.rawValue == "audio")
        #expect(WHATWG.HTML.Attribute.As.document.rawValue == "document")
        #expect(WHATWG.HTML.Attribute.As.embed.rawValue == "embed")
        #expect(WHATWG.HTML.Attribute.As.fetch.rawValue == "fetch")
        #expect(WHATWG.HTML.Attribute.As.font.rawValue == "font")
        #expect(WHATWG.HTML.Attribute.As.image.rawValue == "image")
        #expect(WHATWG.HTML.Attribute.As.object.rawValue == "object")
        #expect(WHATWG.HTML.Attribute.As.script.rawValue == "script")
        #expect(WHATWG.HTML.Attribute.As.style.rawValue == "style")
        #expect(WHATWG.HTML.Attribute.As.track.rawValue == "track")
        #expect(WHATWG.HTML.Attribute.As.worker.rawValue == "worker")
    }
}
