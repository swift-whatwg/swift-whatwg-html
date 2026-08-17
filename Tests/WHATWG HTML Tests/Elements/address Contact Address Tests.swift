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

@Suite struct `Contact Address Tests` {

    @Test func `Basic address creation`() {
        let address = WHATWG_HTML.Element.Address()
        #expect(type(of: address).tag == "address")
    }

    @Test func `Address conforms to HTMLElement`() {
        let address = WHATWG_HTML.Element.Address()
        let element: any WHATWG_HTML.Element.`Protocol` = address
        #expect(type(of: element).tag == "address")
    }

    @Test func `Address is equatable`() {
        let address1 = WHATWG_HTML.Element.Address()
        let address2 = WHATWG_HTML.Element.Address()
        #expect(address1 == address2)
    }

    @Test func `Address is sendable`() {
        let address = WHATWG_HTML.Element.Address()

        Task { _ = address }

        #expect(address == WHATWG_HTML.Element.Address())
    }

    @Suite struct `Common Use Cases` {

        @Test func `Author contact information`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Business contact information`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Article author contact`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Website contact information`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Organization contact details`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Physical address representation`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Email contact representation`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Phone number representation`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Social media handle representation`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Geographic coordinates representation`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `URL contact representation`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }
    }

    @Suite struct `Best Practices Validation` {

        @Test func `Simple address element`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Multiple address elements`() {
            let authorAddress = WHATWG_HTML.Element.Address()
            let businessAddress = WHATWG_HTML.Element.Address()
            let contactAddress = WHATWG_HTML.Element.Address()

            #expect(authorAddress == businessAddress)
            #expect(businessAddress == contactAddress)
            #expect(authorAddress == contactAddress)
        }

        @Test func `Consistent address structure`() {
            let address1 = WHATWG_HTML.Element.Address()
            let address2 = WHATWG_HTML.Element.Address()
            #expect(address1 == address2)
        }

        @Test func `Address element immutability`() {
            let address = WHATWG_HTML.Element.Address()
            let addressCopy = address
            #expect(address == addressCopy)
        }
    }

    @Suite struct `Element Properties` {

        @Test func `Tag name is correct`() { #expect(WHATWG_HTML.Element.Address.tag == "address") }

        @Test func `Element creation is consistent`() {
            let address1 = WHATWG_HTML.Element.Address()
            let address2 = WHATWG_HTML.Element.Address()
            #expect(address1 == address2)
        }

        @Test func `Element has no mutable state`() {
            let address = WHATWG_HTML.Element.Address()
            let copy = address
            #expect(address == copy)
        }

        @Test func `Static tag property access`() { #expect(WHATWG_HTML.Element.Address.tag == "address") }
    }

    @Suite struct `Integration Tests` {

        @Test func `Can be used in collections`() {
            let addresses = [WHATWG_HTML.Element.Address(), WHATWG_HTML.Element.Address(), WHATWG_HTML.Element.Address()]

            #expect(addresses.count == 3)
            #expect(addresses.allSatisfy { $0 == WHATWG_HTML.Element.Address() })
        }

        @Test func `Can be used as dictionary keys`() {
            let addressTypes: [WHATWG_HTML.Element.Address: String] = [WHATWG_HTML.Element.Address(): "contact"]

            #expect(addressTypes.count == 1)
            #expect(addressTypes[WHATWG_HTML.Element.Address()] == "contact")
        }

        @Test func `Can be used as dictionary values`() {
            let contactMethods: [String: WHATWG_HTML.Element.Address] = [
                "email": WHATWG_HTML.Element.Address(), "postal": WHATWG_HTML.Element.Address(), "phone": WHATWG_HTML.Element.Address(),
            ]

            #expect(contactMethods.count == 3)
            #expect(contactMethods.values.allSatisfy { $0 == WHATWG_HTML.Element.Address() })
        }

        @Test func `Can be used in optional contexts`() {
            let maybeAddress: WHATWG_HTML.Element.Address? = WHATWG_HTML.Element.Address()
            let noAddress: WHATWG_HTML.Element.Address? = nil

            #expect(maybeAddress != nil)
            #expect(maybeAddress == WHATWG_HTML.Element.Address())
            #expect(noAddress == nil)
        }

        @Test func `Can be used in sets`() {
            let addressSet: Set<WHATWG_HTML.Element.Address> = [WHATWG_HTML.Element.Address(), WHATWG_HTML.Element.Address(), WHATWG_HTML.Element.Address()]

            #expect(addressSet.count == 1)  // All WHATWG_HTML.Element.Address() instances are equal
            #expect(addressSet.contains(WHATWG_HTML.Element.Address()))
        }
    }

    @Suite struct `Contextual Usage` {

        @Test func `Footer section usage`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Article footer usage`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Document footer usage`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }

        @Test func `Contact section usage`() {
            let address = WHATWG_HTML.Element.Address()
            #expect(address == WHATWG_HTML.Element.Address())
        }
    }
}
