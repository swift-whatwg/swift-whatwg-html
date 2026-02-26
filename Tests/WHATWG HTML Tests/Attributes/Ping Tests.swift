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

@Suite struct `Ping Test` {
    @Test func `Ping attribute should be ping`() { #expect(Ping.attribute == "ping") }

    @Test func `Ping array literal support`() {
        let ping: Ping = ["https://example.com/ping", "https://analytics.example.com/track"]
        #expect(ping.rawValue == "https://example.com/ping https://analytics.example.com/track")
    }
}
