import Testing
import WHATWG_HTML

@Suite struct `Controls Test` {
    @Test func `Controls attribute should be controls`() {
        #expect(WHATWG.HTML.Controls.Attribute.attribute == "controls")
    }
}
