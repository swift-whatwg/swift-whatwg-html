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
    @Test func `ObjectType attribute should be type`() { #expect(ObjectType.attribute == "type") }

    @Test func `ObjectType should have predefined MIME types`() {
        #expect(ObjectType.pdf.rawValue == "application/pdf")
        #expect(ObjectType.mp4.rawValue == "video/mp4")
        #expect(ObjectType.mp3.rawValue == "audio/mpeg")
        #expect(ObjectType.jpeg.rawValue == "image/jpeg")
        #expect(ObjectType.png.rawValue == "image/png")
        #expect(ObjectType.html.rawValue == "text/html")
    }
}
