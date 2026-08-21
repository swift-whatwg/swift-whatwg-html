import Testing
import WHATWG_HTML

@Suite struct `NoResize Test` {
    @Test func `NoResize attribute should be noresize`() {
        #expect(WHATWG.HTML.NoResize.Attribute.attribute == "noresize")
    }
}
