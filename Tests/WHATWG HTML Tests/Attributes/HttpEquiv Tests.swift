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
        #expect(HttpEquiv.attribute == "http-equiv")
    }

    @Test func `HttpEquiv convenience properties`() {
        #expect(HttpEquiv.contentSecurityPolicy.rawValue == "content-security-policy")
        #expect(HttpEquiv.contentType.rawValue == "content-type")
        #expect(HttpEquiv.defaultStyle.rawValue == "default-style")
        #expect(HttpEquiv.refresh.rawValue == "refresh")
        #expect(HttpEquiv.xUaCompatible.rawValue == "x-ua-compatible")
    }
}
