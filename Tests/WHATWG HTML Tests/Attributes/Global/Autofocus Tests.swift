import Testing
import WHATWG_HTML

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

enum `Autofocus Tests` {}

extension `Autofocus Tests` {
    @Suite struct `Autofocus Test` {
        @Test func `Autofocus attribute should be autofocus`() {
            #expect(WHATWG.HTML.Autofocus.Attribute.attribute == "autofocus")
        }
    }
}
