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
        #expect(Autocomplete.attribute == "autocomplete")
    }

    @Test func `Autocomplete convenience properties`() {
        #expect(Autocomplete.on.rawValue == "on")
        #expect(Autocomplete.off.rawValue == "off")
    }

    @Test func `Autocomplete boolean literal`() {
        let onValue: Autocomplete = true
        let offValue: Autocomplete = false
        #expect(onValue.rawValue == "on")
        #expect(offValue.rawValue == "off")
    }

    @Test func `Autocomplete array literal`() {
        let autocomplete: Autocomplete = ["email", "username"]
        #expect(autocomplete.rawValue == "email username")
    }

    @Test func `Autocomplete token support`() {
        let nameToken = Autocomplete.Token.name(.givenName)
        let addressToken = Autocomplete.Token.address(.streetAddress)
        let autocomplete = Autocomplete(nameToken, addressToken)
        #expect(autocomplete.rawValue == "given-name street-address")
    }

    @Test func `Autocomplete shipping and billing helpers`() {
        let shipping = Autocomplete.shipping(.streetAddress)
        let billing = Autocomplete.billing(.postalCode)
        #expect(shipping.rawValue == "shipping street-address")
        #expect(billing.rawValue == "billing postal-code")
    }
}
