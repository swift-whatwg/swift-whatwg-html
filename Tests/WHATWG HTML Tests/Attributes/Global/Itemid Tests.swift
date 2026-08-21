import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Itemid Test` {
    @Test func `Itemid attribute should be itemid`() {
        #expect(WHATWG.HTML.Itemid.Attribute.attribute == "itemid")
    }

    @Test func `Itemid should store and return its value`() {
        let itemid = WHATWG.HTML.Itemid.Attribute("urn:isbn:978-0374228484")
        #expect(itemid.rawValue == "urn:isbn:978-0374228484")
    }

    @Test func `Itemid description should return its value`() {
        let itemid = WHATWG.HTML.Itemid.Attribute("https://example.com/products/123")
        #expect(itemid.description == "https://example.com/products/123")
    }

    @Test func `Itemid should be initializable with string literal`() {
        let itemid: WHATWG.HTML.Itemid.Attribute = "urn:isbn:978-0374228484"
        #expect(itemid.rawValue == "urn:isbn:978-0374228484")
    }
}
