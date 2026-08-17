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
private typealias ExternalObjectTypeAttribute = WHATWG.HTML.ExternalObject.`Type`.Attribute

@Suite struct `ObjectType Test` {
    @Test func `ObjectType attribute should be type`() {
        #expect(ExternalObjectTypeAttribute.attribute == "type")
    }

    @Test func `ObjectType should have predefined MIME types`() {
        #expect(ExternalObjectTypeAttribute.pdf.rawValue == "application/pdf")
        #expect(ExternalObjectTypeAttribute.mp4.rawValue == "video/mp4")
        #expect(ExternalObjectTypeAttribute.mp3.rawValue == "audio/mpeg")
        #expect(ExternalObjectTypeAttribute.jpeg.rawValue == "image/jpeg")
        #expect(ExternalObjectTypeAttribute.png.rawValue == "image/png")
        #expect(ExternalObjectTypeAttribute.html.rawValue == "text/html")
    }
}
