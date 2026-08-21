import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Id Test` {
    @Test func `Id attribute should be id`() { #expect(WHATWG.HTML.Id.Attribute.attribute == "id") }

    @Test func `Id should store and return its value`() {
        let id = WHATWG.HTML.Id.Attribute("header-section")
        #expect(id.rawValue == "header-section")
    }

    @Test func `Id description should return its value`() {
        let id = WHATWG.HTML.Id.Attribute("main-content")
        #expect(id.description == "main-content")
    }

    @Test func `Id should be initializable with string literal`() {
        let id: WHATWG.HTML.Id.Attribute = "footer"
        #expect(id.rawValue == "footer")
    }
}
