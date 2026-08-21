import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite struct `Virtualkeyboardpolicy Test` {
    @Test func `Virtualkeyboardpolicy attribute should be virtualkeyboardpolicy`() {
        #expect(WHATWG.HTML.Virtualkeyboardpolicy.Attribute.attribute == "virtualkeyboardpolicy")
    }

    @Test func `Virtualkeyboardpolicy description should match the spec`() {
        #expect(WHATWG.HTML.Virtualkeyboardpolicy.Attribute.auto.description == "auto")
        #expect(WHATWG.HTML.Virtualkeyboardpolicy.Attribute.manual.description == "manual")
    }
}
