import Testing
import WHATWG_HTML

@Suite struct `MetaName Test` {
    @Test func `MetaName attribute should be name`() {
        #expect(WHATWG.HTML.Meta.Name.Attribute.attribute == "name")
    }

    @Test func `MetaName should have predefined values`() {
        #expect(WHATWG.HTML.Meta.Name.Attribute.application.rawValue == "application-name")
        #expect(WHATWG.HTML.Meta.Name.Attribute.author.rawValue == "author")
        #expect(WHATWG.HTML.Meta.Name.Attribute.description.rawValue == "description")
        #expect(WHATWG.HTML.Meta.Name.Attribute.generator.rawValue == "generator")
        #expect(WHATWG.HTML.Meta.Name.Attribute.keywords.rawValue == "keywords")
        #expect(WHATWG.HTML.Meta.Name.Attribute.referrer.rawValue == "referrer")
        #expect(WHATWG.HTML.Meta.Name.Attribute.themeColor.rawValue == "theme-color")
        #expect(WHATWG.HTML.Meta.Name.Attribute.robots.rawValue == "robots")
        #expect(WHATWG.HTML.Meta.Name.Attribute.viewport.rawValue == "viewport")
    }
}
