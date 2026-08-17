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

@Suite struct `AcceptCharset Test` {
    @Test func `AcceptCharset attribute should be accept-charset`() {
        #expect(WHATWG_HTML.Attribute.AcceptCharset.attribute == "accept-charset")
    }

    @Test func `AcceptCharset convenience properties`() {
        #expect(WHATWG_HTML.Attribute.AcceptCharset.utf8.rawValue == "UTF-8")
        #expect(WHATWG_HTML.Attribute.AcceptCharset.latin1.rawValue == "ISO-8859-1")
        #expect(WHATWG_HTML.Attribute.AcceptCharset.ascii.rawValue == "US-ASCII")
        #expect(WHATWG_HTML.Attribute.AcceptCharset.windows1252.rawValue == "windows-1252")
        #expect(WHATWG_HTML.Attribute.AcceptCharset.utf8AndLatin1.rawValue == "UTF-8,ISO-8859-1")
    }
}
