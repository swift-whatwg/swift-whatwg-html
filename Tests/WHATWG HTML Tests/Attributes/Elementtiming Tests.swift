import Testing
import WHATWG_HTML

@Suite struct `Elementtiming Test` {
    @Test func `Elementtiming attribute should be elementtiming`() {
        #expect(WHATWG.HTML.Elementtiming.Attribute.attribute == "elementtiming")
    }

    @Test func `Elementtiming should support category-based initialization`() {
        let timing = WHATWG.HTML.Elementtiming.Attribute(category: "hero", name: "image")
        #expect(timing.rawValue == "hero-image")

        let customSeparator = WHATWG.HTML.Elementtiming.Attribute(
            category: "main",
            name: "content",
            separator: "_"
        )
        #expect(customSeparator.rawValue == "main_content")
    }

    @Test func `Elementtiming should have predefined categories`() {
        #expect(WHATWG.HTML.Elementtiming.Attribute.Category.hero.value == "hero")
        #expect(WHATWG.HTML.Elementtiming.Attribute.Category.main.value == "main")
        #expect(WHATWG.HTML.Elementtiming.Attribute.Category.header.value == "header")
        #expect(WHATWG.HTML.Elementtiming.Attribute.Category.image.value == "image")
    }

    @Test func `Elementtiming should support Category-based initialization`() {
        let timing = WHATWG.HTML.Elementtiming.Attribute(category: .hero, name: "banner")
        #expect(timing.rawValue == "hero-banner")

        let customTiming = WHATWG.HTML.Elementtiming.Attribute(category: .custom, name: "special")
        #expect(customTiming.rawValue == "special")
    }
}
