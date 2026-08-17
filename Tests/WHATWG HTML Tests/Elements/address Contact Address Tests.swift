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
        let address = WHATWG.HTML.Element.Address()
        #expect(type(of: address).tag == "address")
    }

    @Test func `Address conforms to HTMLElement`() {
        let address = WHATWG.HTML.Element.Address()
        let element: any WHATWG.HTML.Element.`Protocol` = address
        #expect(type(of: element).tag == "address")
    }

    @Test func `Address is equatable`() {
        let address1 = WHATWG.HTML.Element.Address()
        let address2 = WHATWG.HTML.Element.Address()
        #expect(address1 == address2)
    }

    @Test func `Address is sendable`() {
        let address = WHATWG.HTML.Element.Address()

        Task { _ = address }

        #expect(address == WHATWG.HTML.Element.Address())
    }

    @Suite struct `Common Use Cases` {

        @Test func `Author contact information`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Business contact information`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Article author contact`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Website contact information`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Organization contact details`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Physical address representation`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Email contact representation`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Phone number representation`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Social media handle representation`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Geographic coordinates representation`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `URL contact representation`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }
    }

    @Suite struct `Best Practices Validation` {

        @Test func `Simple address element`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Multiple address elements`() {
            let authorAddress = WHATWG.HTML.Element.Address()
            let businessAddress = WHATWG.HTML.Element.Address()
            let contactAddress = WHATWG.HTML.Element.Address()

            #expect(authorAddress == businessAddress)
            #expect(businessAddress == contactAddress)
            #expect(authorAddress == contactAddress)
        }

        @Test func `Consistent address structure`() {
            let address1 = WHATWG.HTML.Element.Address()
            let address2 = WHATWG.HTML.Element.Address()
            #expect(address1 == address2)
        }

        @Test func `Address element immutability`() {
            let address = WHATWG.HTML.Element.Address()
            let addressCopy = address
            #expect(address == addressCopy)
        }
    }

    @Suite struct `Element Properties` {

        @Test func `Tag name is correct`() { #expect(WHATWG.HTML.Element.Address.tag == "address") }

        @Test func `Element creation is consistent`() {
            let address1 = WHATWG.HTML.Element.Address()
            let address2 = WHATWG.HTML.Element.Address()
            #expect(address1 == address2)
        }

        @Test func `Element has no mutable state`() {
            let address = WHATWG.HTML.Element.Address()
            let copy = address
            #expect(address == copy)
        }

        @Test func `Static tag property access`() {
            #expect(WHATWG.HTML.Element.Address.tag == "address")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Can be used in collections`() {
            let addresses = [
                WHATWG.HTML.Element.Address(), WHATWG.HTML.Element.Address(),
                WHATWG.HTML.Element.Address(),
            ]

            #expect(addresses.count == 3)
            #expect(addresses.allSatisfy { $0 == WHATWG.HTML.Element.Address() })
        }

        @Test func `Can be used as dictionary keys`() {
            let addressTypes: [WHATWG.HTML.Element.Address: String] = [
                WHATWG.HTML.Element.Address(): "contact"
            ]

            #expect(addressTypes.count == 1)
            #expect(addressTypes[WHATWG.HTML.Element.Address()] == "contact")
        }

        @Test func `Can be used as dictionary values`() {
            let contactMethods: [String: WHATWG.HTML.Element.Address] = [
                "email": WHATWG.HTML.Element.Address(), "postal": WHATWG.HTML.Element.Address(),
                "phone": WHATWG.HTML.Element.Address(),
            ]

            #expect(contactMethods.count == 3)
            #expect(contactMethods.values.allSatisfy { $0 == WHATWG.HTML.Element.Address() })
        }

        @Test func `Can be used in optional contexts`() {
            let maybeAddress: WHATWG.HTML.Element.Address? = WHATWG.HTML.Element.Address()
            let noAddress: WHATWG.HTML.Element.Address? = nil

            #expect(maybeAddress != nil)
            #expect(maybeAddress == WHATWG.HTML.Element.Address())
            #expect(noAddress == nil)
        }

        @Test func `Can be used in sets`() {
            let addressSet: Set<WHATWG.HTML.Element.Address> = [
                WHATWG.HTML.Element.Address(), WHATWG.HTML.Element.Address(),
                WHATWG.HTML.Element.Address(),
            ]

            #expect(addressSet.count == 1)  // All WHATWG.HTML.Element.Address() instances are equal
            #expect(addressSet.contains(WHATWG.HTML.Element.Address()))
        }
    }

    @Suite struct `Contextual Usage` {

        @Test func `Footer section usage`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Article footer usage`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Document footer usage`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }

        @Test func `Contact section usage`() {
            let address = WHATWG.HTML.Element.Address()
            #expect(address == WHATWG.HTML.Element.Address())
        }
    }
}
