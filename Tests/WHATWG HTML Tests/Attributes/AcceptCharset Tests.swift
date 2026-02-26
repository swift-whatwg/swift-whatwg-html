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
        #expect(AcceptCharset.attribute == "accept-charset")
    }

    @Test func `AcceptCharset convenience properties`() {
        #expect(AcceptCharset.utf8.rawValue == "UTF-8")
        #expect(AcceptCharset.latin1.rawValue == "ISO-8859-1")
        #expect(AcceptCharset.ascii.rawValue == "US-ASCII")
        #expect(AcceptCharset.windows1252.rawValue == "windows-1252")
        #expect(AcceptCharset.utf8AndLatin1.rawValue == "UTF-8,ISO-8859-1")
    }
}
