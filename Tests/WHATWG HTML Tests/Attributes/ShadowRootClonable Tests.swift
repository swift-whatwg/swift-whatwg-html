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

@Suite struct `ShadowRootClonable Test` {
    @Test func `ShadowRootClonable attribute should be shadowrootclonable`() {
        #expect(ShadowRootClonable.attribute == "shadowrootclonable")
    }
}
