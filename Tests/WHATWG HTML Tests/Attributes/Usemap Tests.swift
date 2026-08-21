import Testing
import WHATWG_HTML

@Suite struct `Usemap Test` {
    @Test func `Usemap attribute should be usemap`() {
        #expect(WHATWG.HTML.Usemap.Attribute.attribute == "usemap")
    }

    @Test func `Usemap should automatically add # prefix`() {
        let withoutHash = WHATWG.HTML.Usemap.Attribute("planetmap")
        #expect(withoutHash.rawValue == "#planetmap")

        let withHash = WHATWG.HTML.Usemap.Attribute("#planetmap")
        #expect(withHash.rawValue == "#planetmap")
    }

    @Test func `Usemap should support string literal`() {
        let usemap: WHATWG.HTML.Usemap.Attribute = "mymap"
        #expect(usemap.rawValue == "#mymap")
    }
}
