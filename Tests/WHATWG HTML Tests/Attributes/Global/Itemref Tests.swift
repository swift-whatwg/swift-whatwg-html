import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Itemref Test` {
    @Test func `Itemref attribute should be itemref`() {
        #expect(WHATWG.HTML.Itemref.Attribute.attribute == "itemref")
    }

    @Test func `Itemref should store and return its value`() {
        let itemref = WHATWG.HTML.Itemref.Attribute("details contact")
        #expect(itemref.rawValue == "details contact")
    }

    @Test func `Itemref description should return its value`() {
        let itemref = WHATWG.HTML.Itemref.Attribute("name address")
        #expect(itemref.description == "name address")
    }

    @Test func `Itemref should be initializable with string literal`() {
        let itemref: WHATWG.HTML.Itemref.Attribute = "profile contact"
        #expect(itemref.rawValue == "profile contact")
    }

    @Test func `Itemref should be initializable with array literal`() {
        let itemref: WHATWG.HTML.Itemref.Attribute = ["name", "address", "contact"]
        #expect(itemref.rawValue == "name address contact")
    }
}
