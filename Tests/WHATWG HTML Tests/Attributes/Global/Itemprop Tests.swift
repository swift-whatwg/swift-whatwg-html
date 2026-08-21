import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Itemprop Test` {
    @Test func `Itemprop attribute should be itemprop`() {
        #expect(WHATWG.HTML.Itemprop.Attribute.attribute == "itemprop")
    }

    @Test func `Itemprop should store and return its value`() {
        let itemprop = WHATWG.HTML.Itemprop.Attribute("name")
        #expect(itemprop.rawValue == "name")
    }

    @Test func `Itemprop description should return its value`() {
        let itemprop = WHATWG.HTML.Itemprop.Attribute("director")
        #expect(itemprop.description == "director")
    }

    @Test func `Itemprop should be initializable with string literal`() {
        let itemprop: WHATWG.HTML.Itemprop.Attribute = "author"
        #expect(itemprop.rawValue == "author")
    }

    @Test func `Itemprop should be initializable with array literal`() {
        let itemprop: WHATWG.HTML.Itemprop.Attribute = ["favorite-color", "favorite-fruit"]
        #expect(itemprop.rawValue == "favorite-color favorite-fruit")
    }
}
