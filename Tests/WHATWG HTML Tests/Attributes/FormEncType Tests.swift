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

@Suite struct `FormEncType Test` {
    @Test func `FormEncType attribute should be formenctype`() {
        #expect(WHATWG.HTML.FormEncType.Attribute.attribute == "formenctype")
    }

    @Test func `FormEncType should have predefined values`() {
        #expect(
            WHATWG.HTML.FormEncType.Attribute.urlEncoded.rawValue
                == "application/x-www-form-urlencoded"
        )
        #expect(
            WHATWG.HTML.FormEncType.Attribute.multipartFormData.rawValue == "multipart/form-data"
        )
        #expect(WHATWG.HTML.FormEncType.Attribute.textPlain.rawValue == "text/plain")
    }
}
