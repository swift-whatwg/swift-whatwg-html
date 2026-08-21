import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Writingsuggestions Test` {
    @Test func `Writingsuggestions attribute should be writingsuggestions`() {
        #expect(WHATWG.HTML.Writingsuggestions.Attribute.attribute == "writingsuggestions")
    }

    @Test func `Writingsuggestions description should match the spec`() {
        #expect(WHATWG.HTML.Writingsuggestions.Attribute.true.description == "true")
        #expect(WHATWG.HTML.Writingsuggestions.Attribute.false.description == "false")
    }
}
