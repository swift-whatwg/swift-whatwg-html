import Testing
import WHATWG_HTML
import WHATWG_HTML_Forms

#if canImport(FoundationEssentials)
    import FoundationEssentials
#elseif canImport(Foundation)
#endif

@Suite("Form")
struct FormTests {
    @Test("WHATWG.HTML.Form nest alias resolves to the Forms module's Form")
    func nestAliasResolves() {
        #expect(WHATWG.HTML.Form.self == WHATWG_HTML_Forms.Form.self)
    }
}
