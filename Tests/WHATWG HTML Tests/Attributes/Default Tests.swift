import Testing
import WHATWG_HTML

@Suite struct `Default Test` {
    @Test func `Default attribute should be default`() {
        #expect(WHATWG.HTML.Default.Attribute.attribute == "default")
    }
}
