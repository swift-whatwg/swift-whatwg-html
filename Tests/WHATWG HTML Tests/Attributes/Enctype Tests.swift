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

@Suite struct `EncType Test` {
    @Test func `EncType attribute should be enctype`() {
        #expect(WHATWG_HTML.Attribute.EncType.attribute == "enctype")
    }

    @Test func `EncType convenience properties`() {
        #expect(
            WHATWG_HTML.Attribute.EncType.urlEncoded.rawValue == "application/x-www-form-urlencoded"
        )
        #expect(WHATWG_HTML.Attribute.EncType.multipartFormData.rawValue == "multipart/form-data")
        #expect(WHATWG_HTML.Attribute.EncType.textPlain.rawValue == "text/plain")
    }
}
