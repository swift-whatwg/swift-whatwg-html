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
        #expect(WHATWG.HTML.Autocomplete.Attribute.attribute == "autocomplete")
    }

    @Test func `Autocomplete convenience properties`() {
        #expect(WHATWG.HTML.Autocomplete.Attribute.on.rawValue == "on")
        #expect(WHATWG.HTML.Autocomplete.Attribute.off.rawValue == "off")
    }

    @Test func `Autocomplete boolean literal`() {
        let onValue: WHATWG.HTML.Autocomplete.Attribute = true
        let offValue: WHATWG.HTML.Autocomplete.Attribute = false
        #expect(onValue.rawValue == "on")
        #expect(offValue.rawValue == "off")
    }

    @Test func `Autocomplete array literal`() {
        let autocomplete: WHATWG.HTML.Autocomplete.Attribute = ["email", "username"]
        #expect(autocomplete.rawValue == "email username")
    }

    @Test func `Autocomplete token support`() {
        let nameToken = WHATWG.HTML.Autocomplete.Attribute.Token.name(.givenName)
        let addressToken = WHATWG.HTML.Autocomplete.Attribute.Token.address(.streetAddress)
        let autocomplete = WHATWG.HTML.Autocomplete.Attribute(nameToken, addressToken)
        #expect(autocomplete.rawValue == "given-name street-address")
    }

    @Test func `Autocomplete shipping and billing helpers`() {
        let shipping = WHATWG.HTML.Autocomplete.Attribute.shipping(.streetAddress)
        let billing = WHATWG.HTML.Autocomplete.Attribute.billing(.postalCode)
        #expect(shipping.rawValue == "shipping street-address")
        #expect(billing.rawValue == "billing postal-code")
    }
}
