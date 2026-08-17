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

@Suite struct `Autocomplete Test` {
    @Test func `Autocomplete attribute should be autocomplete`() {
        #expect(WHATWG.HTML.Attribute.Autocomplete.attribute == "autocomplete")
    }

    @Test func `Autocomplete convenience properties`() {
        #expect(WHATWG.HTML.Attribute.Autocomplete.on.rawValue == "on")
        #expect(WHATWG.HTML.Attribute.Autocomplete.off.rawValue == "off")
    }

    @Test func `Autocomplete boolean literal`() {
        let onValue: WHATWG.HTML.Attribute.Autocomplete = true
        let offValue: WHATWG.HTML.Attribute.Autocomplete = false
        #expect(onValue.rawValue == "on")
        #expect(offValue.rawValue == "off")
    }

    @Test func `Autocomplete array literal`() {
        let autocomplete: WHATWG.HTML.Attribute.Autocomplete = ["email", "username"]
        #expect(autocomplete.rawValue == "email username")
    }

    @Test func `Autocomplete token support`() {
        let nameToken = WHATWG.HTML.Attribute.Autocomplete.Token.name(.givenName)
        let addressToken = WHATWG.HTML.Attribute.Autocomplete.Token.address(.streetAddress)
        let autocomplete = WHATWG.HTML.Attribute.Autocomplete(nameToken, addressToken)
        #expect(autocomplete.rawValue == "given-name street-address")
    }

    @Test func `Autocomplete shipping and billing helpers`() {
        let shipping = WHATWG.HTML.Attribute.Autocomplete.shipping(.streetAddress)
        let billing = WHATWG.HTML.Attribute.Autocomplete.billing(.postalCode)
        #expect(shipping.rawValue == "shipping street-address")
        #expect(billing.rawValue == "billing postal-code")
    }
}
