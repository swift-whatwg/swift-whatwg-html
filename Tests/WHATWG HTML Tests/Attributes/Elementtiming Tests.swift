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

@Suite struct `Elementtiming Test` {
    @Test func `Elementtiming attribute should be elementtiming`() {
        #expect(Elementtiming.attribute == "elementtiming")
    }

    @Test func `Elementtiming should support category-based initialization`() {
        let timing = Elementtiming(category: "hero", name: "image")
        #expect(timing.rawValue == "hero-image")

        let customSeparator = Elementtiming(category: "main", name: "content", separator: "_")
        #expect(customSeparator.rawValue == "main_content")
    }

    @Test func `Elementtiming should have predefined categories`() {
        #expect(Elementtiming.Category.hero.value == "hero")
        #expect(Elementtiming.Category.main.value == "main")
        #expect(Elementtiming.Category.header.value == "header")
        #expect(Elementtiming.Category.image.value == "image")
    }

    @Test func `Elementtiming should support Category-based initialization`() {
        let timing = Elementtiming(category: .hero, name: "banner")
        #expect(timing.rawValue == "hero-banner")

        let customTiming = Elementtiming(category: .custom, name: "special")
        #expect(customTiming.rawValue == "special")
    }
}
