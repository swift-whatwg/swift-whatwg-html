import Testing
import WHATWG_HTML

@Suite struct `Compact Test` {
    @Test func `Compact attribute should be compact`() {
        #expect(WHATWG.HTML.Compact.Attribute.attribute == "compact")
    }
}
