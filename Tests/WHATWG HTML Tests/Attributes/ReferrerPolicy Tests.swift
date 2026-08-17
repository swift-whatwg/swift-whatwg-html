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

@Suite struct `ReferrerPolicy Test` {
    @Test func `ReferrerPolicy attribute should be referrerpolicy`() {
        #expect(WHATWG_HTML.Attribute.ReferrerPolicy.attribute == "referrerpolicy")
    }

    @Test func `ReferrerPolicy convenience properties`() {
        #expect(WHATWG_HTML.Attribute.ReferrerPolicy.noReferrer.rawValue == "no-referrer")
        #expect(
            WHATWG_HTML.Attribute.ReferrerPolicy.noReferrerWhenDowngrade.rawValue
                == "no-referrer-when-downgrade"
        )
        #expect(WHATWG_HTML.Attribute.ReferrerPolicy.origin.rawValue == "origin")
        #expect(
            WHATWG_HTML.Attribute.ReferrerPolicy.originWhenCrossOrigin.rawValue
                == "origin-when-cross-origin"
        )
        #expect(WHATWG_HTML.Attribute.ReferrerPolicy.sameOrigin.rawValue == "same-origin")
        #expect(WHATWG_HTML.Attribute.ReferrerPolicy.strictOrigin.rawValue == "strict-origin")
        #expect(
            WHATWG_HTML.Attribute.ReferrerPolicy.strictOriginWhenCrossOrigin.rawValue
                == "strict-origin-when-cross-origin"
        )
        #expect(WHATWG_HTML.Attribute.ReferrerPolicy.unsafeUrl.rawValue == "unsafe-url")
    }
}
