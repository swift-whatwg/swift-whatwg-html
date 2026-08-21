import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Lang Test` {
    @Test func `Lang attribute should be lang`() {
        #expect(WHATWG.HTML.Lang.Attribute.attribute == "lang")
    }

    @Test func `Lang should store and return its value`() {
        let lang = WHATWG.HTML.Lang.Attribute("en-US")
        #expect(lang.rawValue == "en-US")
    }

    @Test func `Lang description should return its value`() {
        let lang = WHATWG.HTML.Lang.Attribute("es")
        #expect(lang.description == "es")
    }

    @Test func `Lang should be initializable with string literal`() {
        let lang: WHATWG.HTML.Lang.Attribute = "fr-CA"
        #expect(lang.rawValue == "fr-CA")
    }
}
