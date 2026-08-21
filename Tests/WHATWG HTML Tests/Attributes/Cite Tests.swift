import Testing
import WHATWG_HTML

@Suite struct `Cite Test` {
    @Test func `Cite attribute should be cite`() {
        #expect(WHATWG.HTML.Cite.Attribute.attribute == "cite")
    }
}
