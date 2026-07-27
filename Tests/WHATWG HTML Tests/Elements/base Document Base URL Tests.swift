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

@Suite struct `Document Base URL Tests` {

    @Test func `Basic base element creation with href`() {
        let href = Href("https://example.com/")
        let base = Base(href: href)
        #expect(Base.tag == "base")
        #expect(base.href == href)
        #expect(base.target == nil)
    }

    @Test func `Basic base element creation with target`() {
        let target = Target.blank
        let base = Base(target: target)
        #expect(Base.tag == "base")
        #expect(base.href == nil)
        #expect(base.target == target)
    }

    @Test func `Basic base element creation with both href and target`() {
        let href = Href("https://example.com/")
        let target = Target.blank
        let base = Base(href: href, target: target)
        #expect(Base.tag == "base")
        #expect(base.href == href)
        #expect(base.target == target)
    }

    @Test func `Base element conforms to HTMLElement`() {
        let href = Href("https://example.com/")
        let base = Base(href: href)
        let element: any WHATWG_HTML.Element.`Protocol` = base
        #expect(type(of: element).tag == "base")
    }

    @Suite struct `Configuration Tests` {

        @Test func `Configuration with href only`() {
            let href = Href("https://example.com/")
            let configuration = Base.Configuration.href(href)
            let base = Base(configuration: configuration)

            #expect(base.configuration == configuration)
            #expect(base.href == href)
            #expect(base.target == nil)
        }

        @Test func `Configuration with target only`() {
            let target = Target.blank
            let configuration = Base.Configuration.target(target)
            let base = Base(configuration: configuration)

            #expect(base.configuration == configuration)
            #expect(base.href == nil)
            #expect(base.target == target)
        }

        @Test func `Configuration with both href and target`() {
            let href = Href("https://example.com/")
            let target = Target.blank
            let configuration = Base.Configuration.both(href: href, target: target)
            let base = Base(configuration: configuration)

            #expect(base.configuration == configuration)
            #expect(base.href == href)
            #expect(base.target == target)
        }

        @Test func `Configuration equality`() {
            let href1 = Href("https://example.com/")
            let href2 = Href("https://example.com/")
            let href3 = Href("https://different.com/")
            let target = Target.blank

            let config1 = Base.Configuration.href(href1)
            let config2 = Base.Configuration.href(href2)
            let config3 = Base.Configuration.href(href3)
            let config4 = Base.Configuration.target(target)

            #expect(config1 == config2)
            #expect(config1 != config3)
            #expect(config1 != config4)
        }

        @Test func `Configuration is hashable`() {
            let href = Href("https://example.com/")
            let target = Target.blank

            let configurations: Set<Base.Configuration> = [
                .href(href), .target(target), .both(href: href, target: target),
            ]

            #expect(configurations.count == 3)
        }
    }

    @Suite struct `Convenience Initializers` {

        @Test func `Href convenience initializer`() {
            let href = Href("https://example.com/")
            let base = Base(href: href)

            #expect(base.href == href)
            #expect(base.target == nil)

            if case .href(let configHref) = base.configuration {
                #expect(configHref == href)
            } else {
                #expect(Bool(false), "Expected href configuration")
            }
        }

        @Test func `Target convenience initializer`() {
            let target = Target.blank
            let base = Base(target: target)

            #expect(base.href == nil)
            #expect(base.target == target)

            if case .target(let configTarget) = base.configuration {
                #expect(configTarget == target)
            } else {
                #expect(Bool(false), "Expected target configuration")
            }
        }

        @Test func `Both href and target convenience initializer`() {
            let href = Href("https://example.com/")
            let target = Target.blank
            let base = Base(href: href, target: target)

            #expect(base.href == href)
            #expect(base.target == target)

            if case .both(let configHref, let configTarget) = base.configuration {
                #expect(configHref == href)
                #expect(configTarget == target)
            } else {
                #expect(Bool(false), "Expected both configuration")
            }
        }
    }

    @Suite struct `Target Attribute Tests` {

        @Test func `Target self`() {
            let target = Target.`self`
            let base = Base(target: target)
            #expect(base.target == target)
        }

        @Test func `Target blank`() {
            let target = Target.blank
            let base = Base(target: target)
            #expect(base.target == target)
        }

        @Test func `Target parent`() {
            let target = Target.parent
            let base = Base(target: target)
            #expect(base.target == target)
        }

        @Test func `Target top`() {
            let target = Target.top
            let base = Base(target: target)
            #expect(base.target == target)
        }

        @Test func `Custom target`() {
            let target = Target("myframe")
            let base = Base(target: target)
            #expect(base.target == target)
        }
    }

    @Suite struct `Common Use Cases` {

        @Test func `Absolute base URL`() {
            let href = Href("https://cdn.example.com/assets/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test func `Relative base URL`() {
            let href = Href("/assets/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test func `Base URL with subdirectory`() {
            let href = Href("https://example.com/app/v1/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test func `Default target for external links`() {
            let target = Target.blank
            let base = Base(target: target)

            #expect(base.target == target)
        }

        @Test func `CDN with new window target`() {
            let href = Href("https://cdn.example.com/")
            let target = Target.blank
            let base = Base(href: href, target: target)

            #expect(base.href == href)
            #expect(base.target == target)
        }

        @Test func `Development environment base`() {
            let href = Href("http://localhost:3000/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test func `Production environment base`() {
            let href = Href("https://myapp.com/")
            let base = Base(href: href)

            #expect(base.href == href)
        }
    }

    @Suite struct `Integration Tests` {

        @Test func `Base element for document head`() {
            let href = Href("https://example.com/")
            let base = Base(href: href)
            let element: any WHATWG_HTML.Element.`Protocol` = base

            #expect(type(of: element).tag == "base")
        }

        @Test func `Multiple base configurations`() {
            let bases = [
                Base(href: Href("https://example.com/")), Base(target: Target.blank),
                Base(href: Href("https://cdn.example.com/"), target: Target.`self`),
            ]

            #expect(bases.count == 3)
            bases.forEach { base in
                #expect(base is any WHATWG_HTML.Element.`Protocol`)
                #expect(type(of: base).tag == "base")
            }
        }

        @Test func `Base element as HTMLElement`() {
            let href = Href("https://example.com/")
            let base = Base(href: href)
            let element: any WHATWG_HTML.Element.`Protocol` = base

            #expect(type(of: element).tag == "base")
        }
    }

    @Suite struct `URL Resolution` {

        @Test func `Base URL for relative paths`() {
            let href = Href("https://example.com/assets/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test func `Base URL for root-relative paths`() {
            let href = Href("/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test func `Base URL with trailing slash`() {
            let href = Href("https://example.com/app/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test func `Base URL without trailing slash`() {
            let href = Href("https://example.com/app")
            let base = Base(href: href)

            #expect(base.href == href)
        }
    }

    @Suite struct `Security and Validation` {

        @Test func `HTTPS base URL`() {
            let href = Href("https://secure.example.com/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test func `HTTP base URL`() {
            let href = Href("http://example.com/")
            let base = Base(href: href)

            #expect(base.href == href)
        }

        @Test func `File protocol base URL`() {
            let href = Href("file:///path/to/directory/")
            let base = Base(href: href)

            #expect(base.href == href)
        }
    }

    @Suite struct `Best Practices` {

        @Test func `Single base element per document`() {
            let href = Href("https://example.com/")
            let base = Base(href: href)

            #expect(Base.tag == "base")
            #expect(base.href == href)
        }

        @Test func `Base element in document head`() {
            let href = Href("https://example.com/")
            let base = Base(href: href)

            #expect(base is any WHATWG_HTML.Element.`Protocol`)
        }

        @Test func `Base element before other URL references`() {
            let href = Href("https://example.com/")
            let base = Base(href: href)

            #expect(base.href == href)
        }
    }
}
