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
        #expect(WHATWG.HTML.ReferrerPolicy.Attribute.attribute == "referrerpolicy")
    }

    @Test func `ReferrerPolicy convenience properties`() {
        #expect(WHATWG.HTML.ReferrerPolicy.Attribute.noReferrer.rawValue == "no-referrer")
        #expect(
            WHATWG.HTML.ReferrerPolicy.Attribute.noReferrerWhenDowngrade.rawValue
                == "no-referrer-when-downgrade"
        )
        #expect(WHATWG.HTML.ReferrerPolicy.Attribute.origin.rawValue == "origin")
        #expect(
            WHATWG.HTML.ReferrerPolicy.Attribute.originWhenCrossOrigin.rawValue
                == "origin-when-cross-origin"
        )
        #expect(WHATWG.HTML.ReferrerPolicy.Attribute.sameOrigin.rawValue == "same-origin")
        #expect(WHATWG.HTML.ReferrerPolicy.Attribute.strictOrigin.rawValue == "strict-origin")
        #expect(
            WHATWG.HTML.ReferrerPolicy.Attribute.strictOriginWhenCrossOrigin.rawValue
                == "strict-origin-when-cross-origin"
        )
        #expect(WHATWG.HTML.ReferrerPolicy.Attribute.unsafeUrl.rawValue == "unsafe-url")
    }
}
