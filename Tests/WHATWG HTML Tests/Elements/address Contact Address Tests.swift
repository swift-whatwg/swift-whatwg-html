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
        let address = WHATWG.HTML.Address.Element()
        #expect(type(of: address).tag == "address")
    }

    @Test func `Address conforms to HTMLElement`() {
        let address = WHATWG.HTML.Address.Element()
        let element: any WHATWG.HTML.Element = address
        #expect(type(of: element).tag == "address")
    }

    @Test func `Address is equatable`() {
        let address1 = WHATWG.HTML.Address.Element()
        let address2 = WHATWG.HTML.Address.Element()
        #expect(address1 == address2)
    }

    @Test func `Address is sendable`() {
        let address = WHATWG.HTML.Address.Element()

        Task { _ = address }

        #expect(address == WHATWG.HTML.Address.Element())
    }

    @Suite struct `Common Use Cases` {

        @Test func `Author contact information`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Business contact information`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Article author contact`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Website contact information`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Organization contact details`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }
    }

    @Suite struct `Semantic Usage` {

        @Test func `Physical address representation`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Email contact representation`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Phone number representation`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Social media handle representation`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Geographic coordinates representation`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `URL contact representation`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }
    }

    @Suite struct `Best Practices Validation` {

        @Test func `Simple address element`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Multiple address elements`() {
            let authorAddress = WHATWG.HTML.Address.Element()
            let businessAddress = WHATWG.HTML.Address.Element()
            let contactAddress = WHATWG.HTML.Address.Element()

            #expect(authorAddress == businessAddress)
            #expect(businessAddress == contactAddress)
            #expect(authorAddress == contactAddress)
        }

        @Test func `Consistent address structure`() {
            let address1 = WHATWG.HTML.Address.Element()
            let address2 = WHATWG.HTML.Address.Element()
            #expect(address1 == address2)
        }

        @Test func `Address element immutability`() {
            let address = WHATWG.HTML.Address.Element()
            let addressCopy = address
            #expect(address == addressCopy)
        }
    }

    @Suite struct `Element Properties` {

        @Test func `Tag name is correct`() { #expect(WHATWG.HTML.Address.Element.tag == "address") }

        @Test func `Element creation is consistent`() {
            let address1 = WHATWG.HTML.Address.Element()
            let address2 = WHATWG.HTML.Address.Element()
            #expect(address1 == address2)
        }

        @Test func `Element has no mutable state`() {
            let address = WHATWG.HTML.Address.Element()
            let copy = address
            #expect(address == copy)
        }

        @Test func `Static tag property access`() {
            #expect(WHATWG.HTML.Address.Element.tag == "address")
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Can be used in collections`() {
            let addresses = [
                WHATWG.HTML.Address.Element(), WHATWG.HTML.Address.Element(),
                WHATWG.HTML.Address.Element(),
            ]

            #expect(addresses.count == 3)
            #expect(addresses.allSatisfy { $0 == WHATWG.HTML.Address.Element() })
        }

        @Test func `Can be used as dictionary keys`() {
            let addressTypes: [WHATWG.HTML.Address.Element: String] = [
                WHATWG.HTML.Address.Element(): "contact"
            ]

            #expect(addressTypes.count == 1)
            #expect(addressTypes[WHATWG.HTML.Address.Element()] == "contact")
        }

        @Test func `Can be used as dictionary values`() {
            let contactMethods: [String: WHATWG.HTML.Address.Element] = [
                "email": WHATWG.HTML.Address.Element(), "postal": WHATWG.HTML.Address.Element(),
                "phone": WHATWG.HTML.Address.Element(),
            ]

            #expect(contactMethods.count == 3)
            #expect(contactMethods.values.allSatisfy { $0 == WHATWG.HTML.Address.Element() })
        }

        @Test func `Can be used in optional contexts`() {
            let maybeAddress: WHATWG.HTML.Address.Element? = WHATWG.HTML.Address.Element()
            let noAddress: WHATWG.HTML.Address.Element? = nil

            #expect(maybeAddress != nil)
            #expect(maybeAddress == WHATWG.HTML.Address.Element())
            #expect(noAddress == nil)
        }

        @Test func `Can be used in sets`() {
            let addressSet: Set<WHATWG.HTML.Address.Element> = [
                WHATWG.HTML.Address.Element(), WHATWG.HTML.Address.Element(),
                WHATWG.HTML.Address.Element(),
            ]

            #expect(addressSet.count == 1)  // All WHATWG.HTML.Address.Element() instances are equal
            #expect(addressSet.contains(WHATWG.HTML.Address.Element()))
        }
    }

    @Suite struct `Contextual Usage` {

        @Test func `Footer section usage`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Article footer usage`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Document footer usage`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }

        @Test func `Contact section usage`() {
            let address = WHATWG.HTML.Address.Element()
            #expect(address == WHATWG.HTML.Address.Element())
        }
    }
}
