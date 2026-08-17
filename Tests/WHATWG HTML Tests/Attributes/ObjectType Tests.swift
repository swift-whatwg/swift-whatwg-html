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
        #expect(WHATWG_HTML.Attribute.ObjectType.attribute == "type")
    }

    @Test func `ObjectType should have predefined MIME types`() {
        #expect(WHATWG_HTML.Attribute.ObjectType.pdf.rawValue == "application/pdf")
        #expect(WHATWG_HTML.Attribute.ObjectType.mp4.rawValue == "video/mp4")
        #expect(WHATWG_HTML.Attribute.ObjectType.mp3.rawValue == "audio/mpeg")
        #expect(WHATWG_HTML.Attribute.ObjectType.jpeg.rawValue == "image/jpeg")
        #expect(WHATWG_HTML.Attribute.ObjectType.png.rawValue == "image/png")
        #expect(WHATWG_HTML.Attribute.ObjectType.html.rawValue == "text/html")
    }
}
