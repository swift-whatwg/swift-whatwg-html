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

@Suite struct `ObjectType Test` {
    @Test func `ObjectType attribute should be type`() {
        #expect(WHATWG.HTML.ExternalObject.`Type`.Attribute.attribute == "type")
    }

    @Test func `ObjectType should have predefined MIME types`() {
        #expect(WHATWG.HTML.ExternalObject.`Type`.Attribute.pdf.rawValue == "application/pdf")
        #expect(WHATWG.HTML.ExternalObject.`Type`.Attribute.mp4.rawValue == "video/mp4")
        #expect(WHATWG.HTML.ExternalObject.`Type`.Attribute.mp3.rawValue == "audio/mpeg")
        #expect(WHATWG.HTML.ExternalObject.`Type`.Attribute.jpeg.rawValue == "image/jpeg")
        #expect(WHATWG.HTML.ExternalObject.`Type`.Attribute.png.rawValue == "image/png")
        #expect(WHATWG.HTML.ExternalObject.`Type`.Attribute.html.rawValue == "text/html")
    }
}
