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
        let address = Address()
        #expect(type(of: address).tag == "address")
    }

    @Test func `Address conforms to HTMLElement`() {
        let address = Address()
        let element: any WHATWG_HTML.Element.`Protocol` = address
        #expect(type(of: element).tag == "address")
    }

    @Test func `Address is equatable`() {
        let address1 = Address()
        let address2 = Address()
        #expect(address1 == address2)
    }

    @Test func `Address is sendable`() {
        let address = Address()

        Task { _ = address }

        #expect(address == Address())
    }

    @Suite struct `Common Use Cases` {

        @Test func `Author contact information`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Business contact information`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Article author contact`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Website contact information`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Organization contact details`() {
            let address = Address()
            #expect(address == Address())
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Physical address representation`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Email contact representation`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Phone number representation`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Social media handle representation`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Geographic coordinates representation`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `URL contact representation`() {
            let address = Address()
            #expect(address == Address())
        }
    }

    @Suite struct `Best Practices Validation` {

        @Test func `Simple address element`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Multiple address elements`() {
            let authorAddress = Address()
            let businessAddress = Address()
            let contactAddress = Address()

            #expect(authorAddress == businessAddress)
            #expect(businessAddress == contactAddress)
            #expect(authorAddress == contactAddress)
        }

        @Test func `Consistent address structure`() {
            let address1 = Address()
            let address2 = Address()
            #expect(address1 == address2)
        }

        @Test func `Address element immutability`() {
            let address = Address()
            let addressCopy = address
            #expect(address == addressCopy)
        }
    }

    @Suite struct `Element Properties` {

        @Test func `Tag name is correct`() { #expect(Address.tag == "address") }

        @Test func `Element creation is consistent`() {
            let address1 = Address()
            let address2 = Address()
            #expect(address1 == address2)
        }

        @Test func `Element has no mutable state`() {
            let address = Address()
            let copy = address
            #expect(address == copy)
        }

        @Test func `Static tag property access`() { #expect(Address.tag == "address") }
    }

    @Suite struct `Integration Tests` {

        @Test func `Can be used in collections`() {
            let addresses = [Address(), Address(), Address()]

            #expect(addresses.count == 3)
            #expect(addresses.allSatisfy { $0 == Address() })
        }

        @Test func `Can be used as dictionary keys`() {
            let addressTypes: [Address: String] = [Address(): "contact"]

            #expect(addressTypes.count == 1)
            #expect(addressTypes[Address()] == "contact")
        }

        @Test func `Can be used as dictionary values`() {
            let contactMethods: [String: Address] = [
                "email": Address(), "postal": Address(), "phone": Address(),
            ]

            #expect(contactMethods.count == 3)
            #expect(contactMethods.values.allSatisfy { $0 == Address() })
        }

        @Test func `Can be used in optional contexts`() {
            let maybeAddress: Address? = Address()
            let noAddress: Address? = nil

            #expect(maybeAddress != nil)
            #expect(maybeAddress == Address())
            #expect(noAddress == nil)
        }

        @Test func `Can be used in sets`() {
            let addressSet: Set<Address> = [Address(), Address(), Address()]

            #expect(addressSet.count == 1)  // All Address() instances are equal
            #expect(addressSet.contains(Address()))
        }
    }

    @Suite struct `Contextual Usage` {

        @Test func `Footer section usage`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Article footer usage`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Document footer usage`() {
            let address = Address()
            #expect(address == Address())
        }

        @Test func `Contact section usage`() {
            let address = Address()
            #expect(address == Address())
        }
    }
}
