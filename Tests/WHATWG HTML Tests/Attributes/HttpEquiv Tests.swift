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
        #expect(WHATWG_HTML.Attribute.HttpEquiv.attribute == "http-equiv")
    }

    @Test func `HttpEquiv convenience properties`() {
        #expect(WHATWG_HTML.Attribute.HttpEquiv.contentSecurityPolicy.rawValue == "content-security-policy")
        #expect(WHATWG_HTML.Attribute.HttpEquiv.contentType.rawValue == "content-type")
        #expect(WHATWG_HTML.Attribute.HttpEquiv.defaultStyle.rawValue == "default-style")
        #expect(WHATWG_HTML.Attribute.HttpEquiv.refresh.rawValue == "refresh")
        #expect(WHATWG_HTML.Attribute.HttpEquiv.xUaCompatible.rawValue == "x-ua-compatible")
    }
}
