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

@Suite struct `Form Test` {
    @Test func `Form should support initialization with form override properties`() {
        let form = WHATWG_HTML.Attribute.Form(
            action: WHATWG_HTML.Attribute.FormAction(value: "/submit"),
            method: WHATWG_HTML.Attribute.FormMethod.post,
            novalidate: WHATWG_HTML.Attribute.FormNovalidate()
        )

        #expect(form.action?.rawValue == "/submit")
        #expect(form.method == .post)
        #expect(form.novalidate != nil)
        #expect(form.enctype == nil)
        #expect(form.target == nil)
    }

    @Test func `Form should support mutating methods`() {
        var form = WHATWG_HTML.Attribute.Form()

        form.action(WHATWG_HTML.Attribute.FormAction(value: "/update"))
        form.method(.get)

        #expect(form.action?.rawValue == "/update")
        #expect(form.method == .get)
    }
}
