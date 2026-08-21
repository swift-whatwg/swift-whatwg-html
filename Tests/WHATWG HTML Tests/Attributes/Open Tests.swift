import Testing
import WHATWG_HTML

@Suite struct `Open Test` {
    @Test func `Open attribute should be open`() {
        #expect(WHATWG.HTML.Open.Attribute.attribute == "open")
    }
}
