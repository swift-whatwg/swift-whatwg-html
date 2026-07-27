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
    @Test func `As attribute should be as`() { #expect(As.attribute == "as") }

    @Test func `As convenience properties`() {
        #expect(As.audio.rawValue == "audio")
        #expect(As.document.rawValue == "document")
        #expect(As.embed.rawValue == "embed")
        #expect(As.fetch.rawValue == "fetch")
        #expect(As.font.rawValue == "font")
        #expect(As.image.rawValue == "image")
        #expect(As.object.rawValue == "object")
        #expect(As.script.rawValue == "script")
        #expect(As.style.rawValue == "style")
        #expect(As.track.rawValue == "track")
        #expect(As.worker.rawValue == "worker")
    }
}
