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

@Suite struct `HttpEquiv Test` {
    @Test func `HttpEquiv attribute should be http-equiv`() {
        #expect(WHATWG.HTML.HttpEquiv.Attribute.attribute == "http-equiv")
    }

    @Test func `HttpEquiv convenience properties`() {
        #expect(
            WHATWG.HTML.HttpEquiv.Attribute.contentSecurityPolicy.rawValue
                == "content-security-policy"
        )
        #expect(WHATWG.HTML.HttpEquiv.Attribute.contentType.rawValue == "content-type")
        #expect(WHATWG.HTML.HttpEquiv.Attribute.defaultStyle.rawValue == "default-style")
        #expect(WHATWG.HTML.HttpEquiv.Attribute.refresh.rawValue == "refresh")
        #expect(WHATWG.HTML.HttpEquiv.Attribute.xUaCompatible.rawValue == "x-ua-compatible")
    }
}
