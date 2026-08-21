import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Inert Test` {
    @Test func `Inert attribute should be inert`() {
        #expect(WHATWG.HTML.Inert.Attribute.attribute == "inert")
    }
}
