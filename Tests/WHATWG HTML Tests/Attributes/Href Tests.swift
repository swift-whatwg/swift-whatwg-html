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

@Suite struct `Href Test` {
    @Test func `Href attribute should be href`() { #expect(Href.attribute == "href") }

    @Test func `Href convenience methods`() {
        #expect(Href.tel("123-456-7890").rawValue == "tel:123-456-7890")
        #expect(Href.mailto("test@example.com").rawValue == "mailto:test@example.com")
        #expect(Href.sms("123-456-7890").rawValue == "sms:123-456-7890")
        #expect(Href.file("/path/to/file").rawValue == "file:///path/to/file")
        #expect(Href.fragment("section1").rawValue == "#section1")
        #expect(Href.whatsapp("123456789").rawValue == "https://wa.me/123456789")
        #expect(Href.facetime("user@example.com").rawValue == "facetime:user@example.com")
        #expect(Href.facetimeVideo("123-456-7890").rawValue == "facetime-video:123-456-7890")
    }

}
