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

@Suite struct `Download Test` {
    @Test func `Download attribute should be download`() {
        #expect(WHATWG_HTML.Attribute.Download.attribute == "download")
    }

    @Test func `Download boolean literal support`() {
        let downloadTrue: WHATWG_HTML.Attribute.Download = true
        let downloadFalse: WHATWG_HTML.Attribute.Download = false
        #expect(downloadTrue.shouldInclude == true)
        #expect(downloadFalse.shouldInclude == false)
    }

    @Test func `Download string literal support`() {
        let download: WHATWG_HTML.Attribute.Download = "document.pdf"
        #expect(download.description == "document.pdf")
        #expect(download.shouldInclude == true)
    }

    @Test func `Download with filename`() {
        let download = WHATWG_HTML.Attribute.Download("report.pdf")
        #expect(download.description == "report.pdf")
        #expect(download.shouldInclude == true)
    }

    @Test func `Download boolean form`() {
        let downloadTrue = WHATWG_HTML.Attribute.Download(true)
        let downloadFalse = WHATWG_HTML.Attribute.Download(false)
        #expect(downloadTrue.shouldInclude == true)
        #expect(downloadFalse.shouldInclude == false)
        #expect(downloadTrue.description.isEmpty)
        #expect(downloadFalse.description.isEmpty)
    }
}
